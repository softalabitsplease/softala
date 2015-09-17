package softala.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Koulutus;
import dao.KoulutusHakuDAO;
import dao.KoulutusLisaysDAO;

import java.util.ArrayList;

/**
 * Servlet implementation class KoulutusServlet
 */
@WebServlet("/koulutukset")
public class KoulutusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public KoulutusServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		ArrayList<Koulutus> koulutukset;
		KoulutusHakuDAO hakuDao = new KoulutusHakuDAO();

		try {
			hakuDao.avaaYhteys();
			koulutukset = hakuDao.haeKoulutukset();
		}  finally {
			hakuDao.suljeYhteys();
		}
		// requestiin talteen
		request.setAttribute("koulutukset", koulutukset);

		// jsp hoitaa muotoilun xdxd
		request.getRequestDispatcher("koulutukset.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String alkamisaika = request.getParameter("alkamisaika");
		String paattymisaika = request.getParameter("paattymisaika");
		String paikka_id = request.getParameter("paikka_id");
		String aihe = request.getParameter("aihe");
		String apuopettaja = request.getParameter("opettaja_id");
		System.out.println(aihe+alkamisaika+paattymisaika+paikka_id+apuopettaja);
		KoulutusLisaysDAO kDao = new KoulutusLisaysDAO();
		
		try {
			
				int paikka_id2 = Integer.parseInt(paikka_id);
				int opettaja_id = Integer.parseInt(apuopettaja);
				kDao.avaaYhteys();
				Koulutus koul = new Koulutus(alkamisaika, paattymisaika, paikka_id2, aihe, opettaja_id);
				
				kDao.LisaaKoulutus(koul);
			
		} finally {
			kDao.suljeYhteys();
		}
	/*catch (Exception e) {
		throw new ServletException(e);
	}*/
	
	response.sendRedirect("lomake");
	}
	

}
