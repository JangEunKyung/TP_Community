package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; // connection:db에접근하게 해주는 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // 정보를 담을 객체

	// mysql에 접속해 주는 부분
	public UserDAO() { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함

		try {
	        String dbURL = "jdbc:mysql://localhost:3306/student"; // localhost:3306 포트는 컴퓨터설치된 mysql주소
			String dbID = "root";
			String dbPassword = "root";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {e.printStackTrace();}
	}

	// 로그인
	public int login(String user_id, String user_pass) {

		String SQL = "SELECT user_pass FROM USER WHERE user_id = ?";
		try {
			// pstmt : prepared statement 정해진 sql문장을 db에 삽입하는 형식으로 인스턴스가져옴
			pstmt = conn.prepareStatement(SQL);
			// sql인젝션 같은 해킹기법을 방어하는것... pstmt을 이용해 하나의 문장을 미리 준비해서(물음표사용)
			// 물음표해당하는 내용을 유저아이디로, 매개변수로 이용.. 1)존재하는지 2)비밀번호무엇인지
			pstmt.setString(1, user_id);
			// rs:result set 에 결과보관
			rs = pstmt.executeQuery();
			// 결과가 존재한다면 실행
			if (rs.next()) {
				// 패스워드 일치한다면 실행
				if (rs.getString(1).equals(user_pass)) {
					return 1; // 로그인 성공
				} else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음 오류
		} catch (Exception e) {e.printStackTrace();}
		return -2; // 데이터베이스 오류를 의미
	}
	
	public int join(User user) { //String user_id, String user_pass, String user_name, String user_email,String user_gen,String user_class) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pass());
			pstmt.setString(3, user.getUser_name());
			pstmt.setString(4, user.getUser_email());
			pstmt.setString(5, user.getUser_gen());
			pstmt.setString(6, user.getUser_class());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {e.printStackTrace();}
		return -1; // 데이터베이스 오류
	}
}
