package softala.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KoulutusHakuDAO;

import java.util.ArrayList;

/**
 * Servlet implementation class KoulutusServlet
 */
@WebServlet("/KoulutusServlet")
public class KoulutusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public KoulutusServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		KoulutusHakuDAO hakuDao = new KoulutusHakuDAO();
		hakuDao.avaaYhteys();
		ArrayList koulutukset = hakuDao.haeKoulutukset();
		for (int i = 0; i < koulutukset.size(); i++) {
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
