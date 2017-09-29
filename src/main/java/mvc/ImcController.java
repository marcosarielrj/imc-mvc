package mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/imcMVC")
public class ImcController extends HttpServlet {
	@Override
	protected void doGet(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		//Obt�m os par�metros da requisi��o.
		String idadeString = request.getParameter("idade");
		float peso = idadeString == null ? 0 : Float.parseFloat(idadeString);
		String pesoString = request.getParameter("peso");
		float altura = idadeString == null ? 0 : Float.parseFloat(idadeString);
		
		//Executa a regra de neg�cio.
		String resultado =
				"" + ImcModel.imc(peso,altura);
		
		//Chama a view.
		//Mandar mensagem para o JSP mostrar.
		request.setAttribute("resultado", resultado);
		request.getRequestDispatcher("imcView.jsp").forward(request, response);
	}
}
