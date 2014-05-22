import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import metier.Agregat;
import metier.Demande;
import metier.Offre;
import metier.User;
import metier.Vote;
import au.com.bytecode.opencsv.CSVReader;
import dao.DAOAgregat;
import dao.DAODemande;
import dao.DAOOffre;
import dao.DAOUser;
import dao.DAOVote;
import dao.hibernate.DAOAgregatHBM;
import dao.hibernate.DAODemandeHBM;
import dao.hibernate.DAOOffreHBM;
import dao.hibernate.DAOUserHBM;
import dao.hibernate.DAOVoteHBM;


public class Testes {

	public static DAODemande daoDemande = DAODemandeHBM.getInstance();
	public static DAOUser daoUser = DAOUserHBM.getInstance();
	private static DAOAgregat daoAgregat = DAOAgregatHBM.getInstance();
	
	private static DAOOffre daoOffre = DAOOffreHBM.getInstance();
	
	public static void main(String[] args) throws Exception {
		
		Offre offre = new Offre();
		offre.setDemande(daoDemande.get(10));
		offre.setDescription("Bla bla bla lbala!");
		offre.setPrestataire(daoUser.get(2));
		offre.setPrix(12);
		daoOffre.save(offre);
	}
	
	private static java.sql.Timestamp StringToTimeStamp(int b, String dateString){
		SimpleDateFormat sdf;
		if(dateString.equals(""))
			return null;
		if(b == 1)
			sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm");
		else
			sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			
			java.util.Date date = sdf.parse(dateString);
			java.sql.Timestamp date_stmp = new java.sql.Timestamp(date.getTime());
		    return date_stmp;	
		    
		    
		} catch (ParseException exp) {
		    exp.printStackTrace();
		}
		return null;
	}

	private static Integer StringToInt(String s){
		if(s.equals("\"\"") || s.equals(""))			
			return 0;
		else 
			return Integer.parseInt(s);
		/*try {
		String chemin = "D:/workspace/J2EE/Données cahier de charge/issues.csv";
		BufferedReader fichier_source;
		fichier_source = new BufferedReader(new FileReader(chemin));
		CSVReader csv = new CSVReader(fichier_source, ';');
		Demande demande = new Demande();
		User user = new User();
		String[] tabChaine;
		
		ArrayList<String[]> demandes = (ArrayList<String[]>) csv.readAll();
		for(int i=1; i < demandes.size(); i++){				
		
			tabChaine = demandes.get(i);
			
			  demande.setDemandeIdRMINE(StringToInt(tabChaine[0]));	
			  demande.setProjet(tabChaine[1]);
			  demande.setTracker(tabChaine[2]);
			  //demande.setTâche parente(tabChaine[3]);
			  demande.setStatut(tabChaine[4]);
			  demande.setPriorite(tabChaine[5]);
			  demande.setSujet(tabChaine[6]);
			  user = new User(tabChaine[7]+"@amoa.fr", tabChaine[7], tabChaine[7], tabChaine[7], false, tabChaine[7]);
			  demande.setAuteur(user);
			  demande.setAssigneA(new User(tabChaine[8], tabChaine[8], tabChaine[8], tabChaine[8], false, tabChaine[8]));
			  demande.setMiseAJours(StringToTimeStamp(1, tabChaine[9]));
			  //demande.setProjet(tabChaine[10]); categorie unitil
			  demande.setVersionCible(tabChaine[11]);
			  demande.setDebut(StringToTimeStamp(0, tabChaine[12]));		    		  
			  demande.setEcheance(StringToTimeStamp(0,tabChaine[13]));
			  demande.setTempsEstime(StringToInt(tabChaine[14]));
			  demande.setPourcentageRealise(Double.parseDouble(tabChaine[15]));
			  demande.setCree(StringToTimeStamp(1, tabChaine[16]));
			  demande.setFerme(StringToTimeStamp(1, tabChaine[17]));
			  //demande.setProjet(tabChaine[18]);Demandes liées
			  demande.setVersionApplication(tabChaine[19]);
			  demande.setTempsVendu(StringToInt(tabChaine[20]));
			  //demande.setProjet(tabChaine[21]); RAE
			  demande.setCriticite(tabChaine[22]);
			  //demande.(tabChaine[23]); Lien vTiger
			  demande.setDescription(tabChaine[24]);    		 
			
			daoUser.save(user);
			daoDemande.save(demande);
		}
		
		
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

			************
			
		try {
				String chemin = "D:/workspace/J2EE/Données cahier de charge/issues.csv";
				BufferedReader fichier_source;
				fichier_source = new BufferedReader(new FileReader(chemin));
				CSVReader csv = new CSVReader(fichier_source, ';');						
				String[] tabChaine;
				
				ArrayList<Demande> demandees = daoDemande.load();
				
				ArrayList<String[]> demandes = (ArrayList<String[]>) csv.readAll();
				for(int i=1; i < demandes.size(); i++){
					tabChaine = demandes.get(i);
					Demande d = demandees.get(i-1);
					d.setDemandeIdRMINE(StringToInt(tabChaine[0]));
					daoDemande.save(d);
				}
				
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			
	*/	
	}
	
	
}
