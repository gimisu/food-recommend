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
	  food food1 = new food("남도분식", "남도 분식", 13500); 
      food1.setDescription("기본으로 나오는 떡, 오뎅, 계란은 물론이고 당면까지 나와요. 그 외에도 각종 토핑이 아낌 없이 팍팍 들어 있습니다.\r\n" + 
      		"또띠아 같기도 한 납작만두 비주얼 좀 보세요. 요건 옆에 양배추 무침을 잘 무쳐서 먹는 게 포인트예요. 먹는 방법도 한국의 또띠아가 아닐까 싶습니다.\r\n" 
    		  + "1단계부터 3단계까지 선택할 수 있어요.\r\n" + 
    		  "1단계 : 조금 매움 / 2단계 : 매움  / 3단계 : 아주 매움");
      food1.setScore("★★★★★");
      food1.setAddress("서울 영등포구 영중로 15 타임스퀘어");
      food1.setFilename("남도분식.jpg");
      
      food food2 = new food("땡스오트", "땡스오트", 8000);
      food2.setDescription("애견동반이 가능해요.\r\n" + 
      		"야외 테이블에서만 먹을 수 있고 그런게 아니라\r\n" +       		
      		"안에서 강아지와 함께 식사를 즐길 수 있는\r\n" +       	
      		"찐 애견동반가능한 곳이랍니다. 그레놀라도 판매하고 있고\r\n" + 
      		"요거트 메뉴는 5-6가지 정도 있습니다."
      		);
      food2.setScore("★★★★★");
      food2.setAddress("서울 마포구 성미산로23길 68");
      food2.setFilename("땡스오트.jpg");
      
      food food3 =new food("킷사서울", "킷사서울", 13000);
      food3.setDescription("한상차림으로 메뉴가 나와 정갈해보인다.\r\n" + 
      		"양이 작아보이지만 은근 양이 많았다. \r\n" + 
      		"고기가 얇지않고 도톰하며 큼지막해 식감이 좋고 간도 짜거나 자극적이지 않아 부담스럽지 않고 맛있었다.\r\n" );
      food3.setScore("★★★★★");
      food3.setAddress("서울 관악구 남부순환로226길 31 2층 킷사서울");
      food3.setFilename("킷사서울.jpg");
      
      food food4 =new food("이름없는파스타", "이름없는 파스타", 11500);
      food4.setDescription("가격대가 저렴한 반면 주문과 물 식기 반납 모두 셀프시스템이다.\r\n" 
      +" 대부분 만원 이하의 가격 책자에 조금 더 보기 편하게 메뉴들이 정리되어있다. "
    		  +"오픈형 주방으로 바로 앞에서 조리해 바로 나온다.");
      food4.setScore("★★★★★");
      food4.setAddress("서울 구로구 구로중앙로 152");
      food4.setFilename("이름없는파스타.jpg");
      
      food food5 =new food("라화쿵부", "라화쿵부", 8000);
      food5.setDescription("중국 사천에서 시작한 요리로 \r\n" + 
      		"원하는 재료를 고른다음, 탕으로 먹을건지\r\n" + 
      		"볶아먹을건지 선택을 하면 되는데 주문하고\r\n" + 
      		"10분내외로 나오는 편이다. 마라탕 뿐만아니라\r\n" + 
      		"마라샹궈, 매운가재볶음, 꿔바로우,\r\n" + 
      		"샤오롱바오, 쌀국수, 만두, 볶음밥 등등 종류가 참 다양하니깐\r\n" + 
      		"취향에 맞춰 다양하게 주문하면 된답니다.\r\n" );
      food5.setScore("★★★★★");
      food5.setAddress("서울 구로구 개봉로 127 2층");
      food5.setFilename("라화쿵부.jpg");
      
      food food6 =new food("곱창고", "곱창고", 11000);
      food6.setDescription("프랜차이즈 곱창집 중 가격 대비 맛도 너무 좋아서,\r\n" + 
      		"정말 꾸준히 방문했던 곳이다.곱창고는 역시 모듬구이가 핫 메뉴.\r\n" + 
      		"곱창과 대창, 막창, 염통을 함께 먹을 수 있어요,!\r\n" + 
      		"그 외 곱창전골과 한우 육회 메뉴도 있어요.밑반찬과 서비스로 나오는 순두부찌개.\r\n" +
      		"반찬은 부추와 김치, 양파절임과 소스가 나와요.\r\n" + 
      		"순두부찌개는 재료도 많이 들어있고,\r\n" + 
      		"얼큰하면서 국물이 진해요.\r\n" + 
      		"게다가 무한리필이라는 점,,ㅎ\r\n" + 
      		"또한 사이드 메뉴도 엄청 다양하다.\r\n");
      food6.setScore("★★★★★");
      food6.setAddress("경기 부천시 소향로 111");
      food6.setFilename("곱창고.jpg");
      
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


   
