package mvc;

public class ImcModel {

	public static float imc(float peso, float altura) {
		
		float imc = peso / (altura * altura);
		
		return imc;
	}

	public static String mostrarResultado (float imc) {
		
		return "" + imc;
			
	}

	/*public static String descricaoDaMaioridade(int idade) {
		return descricaoDaMaioridade(maiorDeIdade(idade));
	}*/
}
