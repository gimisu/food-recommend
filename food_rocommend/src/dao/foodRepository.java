package dao;

import java.util.ArrayList;

import dto.food;

public class foodRepository {
   
   private static ArrayList<food> listOfProducts = new ArrayList<food>();
   
   private static foodRepository instance = new foodRepository();
   
   public static foodRepository getInstance() {
	   if (instance == null)
		   instance = new foodRepository();
      return instance;
   }

   public food getProductById(String productId) {
	   food productById = null;
      
      for (int i =0; i < listOfProducts.size(); i++ ) {
    	  food product = listOfProducts.get(i);
         if 	(product != null && 
        		 product.getfoodId() != null && 
        		 product.getfoodId().equals(productId)) {
            productById = product;
            break;
         }
         
      }
      return productById;
   }
   
   public foodRepository() {
	  food food1 = new food("�����н�", "���� �н�", 13500); 
      food1.setDescription("�⺻���� ������ ��, ����, ����� �����̰� ������ ���Ϳ�. �� �ܿ��� ���� ������ �Ƴ� ���� ���� ��� �ֽ��ϴ�.\r\n" + 
      		"�Ƕ�� ���⵵ �� ���۸��� ���־� �� ������. ��� ���� ����� ��ħ�� �� ���ļ� �Դ� �� ����Ʈ����. �Դ� ����� �ѱ��� �Ƕ�ư� �ƴұ� �ͽ��ϴ�.\r\n" 
    		  + "1�ܰ���� 3�ܰ���� ������ �� �־��.\r\n" + 
    		  "1�ܰ� : ���� �ſ� / 2�ܰ� : �ſ�  / 3�ܰ� : ���� �ſ�");
      food1.setScore("�ڡڡڡڡ�");
      food1.setAddress("���� �������� ���߷� 15 Ÿ�ӽ�����");
      food1.setFilename("�����н�.jpg");
      
      food food2 = new food("������Ʈ", "������Ʈ", 8000);
      food2.setDescription("�ְߵ����� �����ؿ�.\r\n" + 
      		"�߿� ���̺����� ���� �� �ְ� �׷��� �ƴ϶�\r\n" +       		
      		"�ȿ��� �������� �Բ� �Ļ縦 ��� �� �ִ�\r\n" +       	
      		"�� �ְߵ��ݰ����� ���̶��ϴ�. �׷���� �Ǹ��ϰ� �ְ�\r\n" + 
      		"���Ʈ �޴��� 5-6���� ���� �ֽ��ϴ�."
      		);
      food2.setScore("�ڡڡڡڡ�");
      food2.setAddress("���� ������ ���̻��23�� 68");
      food2.setFilename("������Ʈ.jpg");
      
      food food3 =new food("Ŷ�缭��", "Ŷ�缭��", 13000);
      food3.setDescription("�ѻ��������� �޴��� ���� �����غ��δ�.\r\n" + 
      		"���� �۾ƺ������� ���� ���� ���Ҵ�. \r\n" + 
      		"��Ⱑ �����ʰ� �����ϸ� ŭ������ �İ��� ���� ���� ¥�ų� �ڱ������� �ʾ� �δ㽺���� �ʰ� ���־���.\r\n" );
      food3.setScore("�ڡڡڡڡ�");
      food3.setAddress("���� ���Ǳ� ���μ�ȯ��226�� 31 2�� Ŷ�缭��");
      food3.setFilename("Ŷ�缭��.jpg");
      
      food food4 =new food("�̸������Ľ�Ÿ", "�̸����� �Ľ�Ÿ", 11500);
      food4.setDescription("���ݴ밡 ������ �ݸ� �ֹ��� �� �ı� �ݳ� ��� �����ý����̴�.\r\n" 
      +" ��κ� ���� ������ ���� å�ڿ� ���� �� ���� ���ϰ� �޴����� �����Ǿ��ִ�. "
    		  +"������ �ֹ����� �ٷ� �տ��� ������ �ٷ� ���´�.");
      food4.setScore("�ڡڡڡڡ�");
      food4.setAddress("���� ���α� �����߾ӷ� 152");
      food4.setFilename("�̸������Ľ�Ÿ.jpg");
      
      food food5 =new food("��ȭ����", "��ȭ����", 8000);
      food5.setDescription("�߱� ��õ���� ������ �丮�� \r\n" + 
      		"���ϴ� ��Ḧ ������, ������ ��������\r\n" + 
      		"���Ƹ������� ������ �ϸ� �Ǵµ� �ֹ��ϰ�\r\n" + 
      		"10�г��ܷ� ������ ���̴�. ������ �Ӹ��ƴ϶�\r\n" + 
      		"���󼧱�, �ſ�纺��, ��ٷο�,\r\n" + 
      		"�����չٿ�, �ұ���, ����, ������ ��� ������ �� �پ��ϴϱ�\r\n" + 
      		"���⿡ ���� �پ��ϰ� �ֹ��ϸ� �ȴ�ϴ�.\r\n" );
      food5.setScore("�ڡڡڡڡ�");
      food5.setAddress("���� ���α� ������ 127 2��");
      food5.setFilename("��ȭ����.jpg");
      
      food food6 =new food("��â��", "��â��", 11000);
      food6.setDescription("���������� ��â�� �� ���� ��� ���� �ʹ� ���Ƽ�,\r\n" + 
      		"���� ������ �湮�ߴ� ���̴�.��â��� ���� ��뱸�̰� �� �޴�.\r\n" + 
      		"��â�� ��â, ��â, ������ �Բ� ���� �� �־��,!\r\n" + 
      		"�� �� ��â����� �ѿ� ��ȸ �޴��� �־��.�ع����� ���񽺷� ������ ���κ��.\r\n" +
      		"������ ���߿� ��ġ, �������Ӱ� �ҽ��� ���Ϳ�.\r\n" + 
      		"���κ���� ��ᵵ ���� ����ְ�,\r\n" + 
      		"��ū�ϸ鼭 ������ ���ؿ�.\r\n" + 
      		"�Դٰ� ���Ѹ����̶�� ��,,��\r\n" + 
      		"���� ���̵� �޴��� ��û �پ��ϴ�.\r\n");
      food6.setScore("�ڡڡڡڡ�");
      food6.setAddress("��� ��õ�� ����� 111");
      food6.setFilename("��â��.jpg");
      
      listOfProducts.add(food1);
      listOfProducts.add(food2);
      listOfProducts.add(food3);
      listOfProducts.add(food4);
      listOfProducts.add(food5);
      listOfProducts.add(food6);
      

      for (int i =0; i < listOfProducts.size(); i++ )
    	  System.out.println(listOfProducts.get(i).getFilename());
      }

      
      public ArrayList<food> getAllProducts(){
         return listOfProducts;
      }
      
      public void addProduct(food product) {
         listOfProducts.add(product);
      }
      
      
}


   
