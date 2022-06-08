package br.fiap.bayer;

import java.text.ParseException;
import br.fiap.bayer.db.ConnectionManager;


public class Healthcare {
	
	public static void main(String[] args) throws ParseException {
		System.out.println("Healthcare");
		ConnectionManager Connection = new ConnectionManager();		
		try {		
			if (!Connection.Connect())  {
				System.err.println("Banco de dados nao conectado.");
				return;
			}
			
			
			
			User user = new User(Connection);
		
//			// CADASTRO DE USUARIO - ACESSO AO SISTEMA
//			Date birthDate = new SimpleDateFormat("dd/MM/yyyy").parse("04/11/1979");
//			if (user.register("elio.designer@hotmail.com", "AB@102030", "Elio Gonçalves de Lima", "11993833705", birthDate)) {
//				System.err.println("Erro ao cadastrar o usuário.");
//				return;
//			}	
			
			// ACESSO AO SISTEMA
			if (!user.logIn("elio.designer@hotmail.com", "Ab@102030")) {
				System.err.println("Usuário não localizado.");
				return;						
			} 
		
			System.out.println("");		
			System.out.println("Usuário logado");
			System.out.println("Nome :: ".concat(user.row.getName()));
			System.out.println("************************************************************************");
			System.out.println("");
		

			// LISTANDO OS ENDEREÇOS
			if (user.address.findAll(100)) {
				do {
					System.out.println("address :: ".concat(user.address.row.getAddress()));			
				} while (user.address.next());
			}
			
			
			System.out.println(" ");
			Ocorrence ocorrence = new Ocorrence(Connection);
			if (!ocorrence.statistic.findStatistic()) {
				System.err.println("[ocorrence.findStatistic] Nenhum resultado encontrado.");
				return;
			}
			
			System.out.println("Relatorio Estatistico por Regiao, Categoria");
			System.out.println("************************************************************");
			System.out.println(" ");
			
			do {
				String line = "";
				line = ocorrence.statistic.row.getLocationType();
				line = line.concat(", ").concat(ocorrence.statistic.row.getCategory());
				line = line.concat(", ").concat(ocorrence.statistic.row.getAlertPoint());
				line  = line.concat(", ").concat(Integer.toString(ocorrence.statistic.row.getValue()));			
				System.out.println(line);			
			} while (ocorrence.statistic.next());
			
			
		} finally {
			Connection.Close();
		}
		
	}
	
}