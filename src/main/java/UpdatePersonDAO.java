import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/*
 * Update person database access object
 * 
 * @author Xianwen Jin
*/

public final class UpdatePersonDAO {
	
	private static final String STATEMENT_UPDATE_PERSON = "UPDATE Remytutor.Person SET Name=?, Surname=?, Gender=?, DoB=?, Email=?, Phone=?, City=? WHERE IDUser=?";
	private static final String STATEMENT_UPDATE_PASS = "UPDATE Remytutor.Person SET Passwd=SHA2(?,256) WHERE IDUser=? AND Passwd = SHA2(?, 256)";
	private static final String STATEMENT_UPDATE_DESCRIPTION = "UPDATE Remytutor.Person SET Description=? WHERE IDUser=?";

	private final Connection con;
	private final Person person;
	
	public UpdatePersonDAO(final Connection con, final Person person) {
		this.con = con;
		this.person = person;
	}
	
	public void updatePerson() throws SQLException {

		try (PreparedStatement pstmt = con.prepareStatement(STATEMENT_UPDATE_PERSON)) {
			pstmt.setString(1, person.getName());
			pstmt.setString(2, person.getSurname());
			pstmt.setString(3, person.getGender());
			pstmt.setDate(4, person.getDob());
			pstmt.setString(5, person.getEmail());
			pstmt.setString(6, person.getPhone());
			pstmt.setString(7, person.getCity());
			pstmt.setInt(8, person.getID());

			pstmt.execute();
		}
	}
	
	public void updatePassword(String newPassword, String oldPassword) throws SQLException{

		try (PreparedStatement pstmt = con.prepareStatement(STATEMENT_UPDATE_PASS)) {
			pstmt.setString(1, newPassword);
			pstmt.setInt(2, person.getID());
			pstmt.setString(3, oldPassword);

			pstmt.execute();
		}
	}
	
	/*public void updateDescription(String text) throws SQLException{
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = con.prepareStatement(STATEMENT1);
			pstmt.setString(1, tex);
			pstmt.setInt(2, person.getID());
			
			pstmt.execute();
		} finally {
			if (pstmt != null)
				pstmt.close();
			
		}	
		
	}*/
}