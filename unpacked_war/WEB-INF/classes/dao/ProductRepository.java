package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance;
	}

	public ProductRepository() {

		// 상의
		Product a001 = new Product("하트 레이스 U넥 썸머 반팔 블라우스", 34000, "블루/네이비", "26°C~29°C");
		a001.setProductId("A001");
		a001.setDescription("산뜻한 착용감을 선사해주는 여름용 코튼 원단에<br>귀엽고 미니멀한 디테일들을 더해준 블라우스로<br>장시간 착용해도 구김이 잘 가지 않아 편안해요");
		a001.setSize("F");
		a001.setCategory("상의");
		a001.setUnitsInStock(100);
		a001.setCondition("보통");
		a001.setFileName("A001.png");

		Product a002 = new Product("셰이드 셔링 티", 17000, "화이트/아이보리", "30°C~");
		a002.setProductId("A002");
		a002.setDescription("신축성이 좋은 원단을 사용하여 바디라인을 부드럽게 감싸줘요<br>핏을 예쁘게 잘 살려주고 한쪽 어깨만 슬쩍 드러냄으로 섹시함도 업!");
		a002.setSize("S, M, L, XL");
		a002.setCategory("상의");
		a002.setUnitsInStock(100);
		a002.setCondition("얇음");
		a002.setFileName("A002.jpg");

		Product a003 = new Product("루즈핏 린넨 셔츠", 27080, "바이올렛", "26°C~29°C");
		a003.setProductId("A003");
		a003.setDescription("넉넉한 사이즈로 여리여리한 핏을 완성해주는 데일리 셔츠<br>얇은 소재라서 긴팔이지만 시원하게 입을 수 있어요!");
		a003.setSize("F");
		a003.setCategory("상의");
		a003.setUnitsInStock(100);
		a003.setCondition("얇음");
		a003.setFileName("A003.jpg");

		Product a004 = new Product("유프리아 스판 U넥 크롭 티셔츠", 98000, "블루/네이비", "30°C~");
		a004.setProductId("A004");
		a004.setDescription("깔끔하고 과하지 않은 U넥으로 데일리하게 입기 좋은 크롭티입니다<br>신축성 좋은 소재로 데일리하게 다양한 하의와 코디하여 입기 좋아요");
		a004.setSize("S, M, L");
		a004.setCategory("상의");
		a004.setUnitsInStock(100);
		a004.setCondition("얇음");
		a004.setFileName("A004.png");

		Product a005 = new Product("프빈트아 알파카 루즈핏 체커보드 니트", 37800, "핑크", "10°C~15°C");
		a005.setProductId("A005");
		a005.setDescription("넉넉한 핏으로 데일리하면서도 편안하게 착용 가능해요!<br>체크패턴으로 발랄한 느낌을 줘요");
		a005.setSize("S, M, L, XL");
		a005.setCategory("상의");
		a005.setUnitsInStock(100);
		a005.setCondition("두꺼움");
		a005.setFileName("A005.jpg");

		Product a006 = new Product("라이쥬어 보트넥 퍼 니트", 24800, "핑크", "10°C~15°C");
		a006.setProductId("A006");
		a006.setDescription("데일리한 무드로 입기 좋은 니트에요<br>세미 크롭 길이감과 루즈한 핏으로 부담없이 착용하기 좋아요");
		a006.setSize("S, M, L, XL");
		a006.setCategory("상의");
		a006.setUnitsInStock(100);
		a006.setCondition("두꺼움");
		a006.setFileName("A006.png");

		Product a007 = new Product("로핑트 플리스 오버핏 조끼", 22800, "화이트/아이보리", "10°C~15°C");
		a007.setProductId("A007");
		a007.setDescription("부드럽고 도톰한 소재로 따뜻하게 착용 가능한 아이템이에요<br>넉넉한 품과 기장감으로 여리여리한 코디가 가능한 소보로 조끼에요");
		a007.setSize("F");
		a007.setCategory("상의");
		a007.setUnitsInStock(100);
		a007.setCondition("두꺼움");
		a007.setFileName("A007.png");

		Product a008 = new Product("싱글 스트랩 브이넥 새틴 실크 슬리브리스 탑", 16900, "그레이/블랙", "30°C~");
		a008.setProductId("A008");
		a008.setDescription("베이직한 싱글 스트랩 실크 민소매 탑입니다.<br>찰랑이는 새틴 실크 소재로 착용감이 부드럽고 유연합니다<br>끈 길이 조절도 가능해요!");
		a008.setSize("S, M");
		a008.setCategory("상의");
		a008.setUnitsInStock(100);
		a008.setCondition("보통");
		a008.setFileName("A008.png");

		Product a009 = new Product("구슬 홀터넥 셔링 튜브탑", 19300, "베이지/브라운", "30°C~");
		a009.setProductId("A009");
		a009.setDescription("구슬 포인트와 끈장식으로 유니크함 업!<br>여행이나 축제시즌에 포인트로 입기 좋아요");
		a009.setSize("XS, S, M");
		a009.setCategory("상의");
		a009.setUnitsInStock(100);
		a009.setCondition("보통");
		a009.setFileName("A009.png");

		// 하의
		Product b001 = new Product("로알빈 트위드 뒷밴딩 핀턱 숏 팬츠", 21500, "그레이/블랙", "26°C~29°C");
		b001.setProductId("B001");
		b001.setDescription("데일리룩, 데이트룩으로도 부담스럽지 않게 입기 좋은 트위드 팬츠");
		b001.setSize("S, M, L");
		b001.setCategory("하의");
		b001.setUnitsInStock(100);
		b001.setCondition("보통");
		b001.setFileName("B001.jpg");

		Product b002 = new Product("니드앤 하이웨스트 뒷밴딩 썸머 트위드 숏팬츠", 22900, "화이트/아이보리", "26°C~29°C");
		b002.setProductId("B002");
		b002.setDescription("몸에 달라붙지 않는 소재로 제작되어 시원하고 뒷밴딩으로 장시간 착용해도 편안한 팬츠");
		b002.setSize("XS, S, M");
		b002.setCategory("하의");
		b002.setUnitsInStock(50);
		b002.setCondition("보통");
		b002.setFileName("B002.jpg");

		Product b003 = new Product("던트빈 골지 밴딩 롱 와이드 팬츠", 24800, "그레이/블랙", "16°C~20°C");
		b003.setProductId("B003");
		b003.setDescription("낭낭한 와이드 핏의 밴딩팬츠이며 여유로운 핏과 기장감으로 활동성과 편안하이 중독적인 팬츠");
		b003.setSize("S, M, L, XL");
		b003.setCategory("하의");
		b003.setUnitsInStock(80);
		b003.setCondition("보통");
		b003.setFileName("B003.jpg");

		Product b004 = new Product("로이츠룸 롱 와이드 데님 팬츠", 29800, "블루/네이비", "10°C~15°C");
		b004.setProductId("B004");
		b004.setDescription("발등을 덮어주는 롱한 길이감과 와이드한 핏으로 베이직하게 착용하기 좋은 와이드 청바지");
		b004.setSize("F");
		b004.setCategory("하의");
		b004.setUnitsInStock(60);
		b004.setCondition("보통");
		b004.setFileName("B004.jpg");

		Product b005 = new Product("데님 컬러 팬츠", 47400, "핑크", "16°C~20°C");
		b005.setProductId("B005");
		b005.setDescription("하이 라이즈 스트레이트 핏의 실루엣으로 다양한 상의와 코디하기 좋은 바지");
		b005.setSize("S, M");
		b005.setCategory("하의");
		b005.setUnitsInStock(70);
		b005.setCondition("보통");
		b005.setFileName("B005.jpg");

		Product b006 = new Product("기모빵빵 겨울 밴딩 조거 팬츠", 38900, "화이트/아이보리", "~9°C");
		b006.setProductId("B006");
		b006.setDescription("허벅지부터 여유있는 와이드 스트레이트핏에 허리를 안정감 있게 잡아주는 하이웨스트 바지");
		b006.setSize("F");
		b006.setCategory("하의");
		b006.setUnitsInStock(90);
		b006.setCondition("두꺼움");
		b006.setFileName("B006.jpg");

		Product b007 = new Product("쿨원단 밴딩 레직기 부츠컷 데님 청바지 팬츠", 45000, "블루/네이비", "21°C~25°C");
		b007.setProductId("B007");
		b007.setDescription("쿨원단 소재로 디자인된 스판 부츠컷 바지, 시원하고 통기성 좋은 소재로 착용감이 좋고 기본기장으로 부담없이 착용 가능");
		b007.setSize("S, M, L, XL");
		b007.setCategory("하의");
		b007.setUnitsInStock(120);
		b007.setCondition("보통");
		b007.setFileName("B007.jpg");

		Product b008 = new Product("쿨썸머슬랙스", 34200, "베이지/브라운", "26°C~29°C");
		b008.setProductId("B008");
		b008.setDescription("쿨링감이 느껴지는 시원한 텍스처와 은은하게 보이는 원단결이 고급스러우며 한여름까지 쭉 산뜻하게 즐기기 좋은 쿨 슬랙스");
		b008.setSize("S, M, L, XL");
		b008.setCategory("하의");
		b008.setUnitsInStock(80);
		b008.setCondition("얇음");
		b008.setFileName("B008.jpg");

		Product b009 = new Product("피티브 씨엔 벨트 슬랙스", 39000, "그린", "10°C~15°C");
		b009.setProductId("B009");
		b009.setDescription("시즈닝처럼 잘 잡힌 원핀턱 디테일에 세미 와이드 핏으로 발등까지 툭 떨어지는 멋스러운 아웃핏의 팬츠");
		b009.setSize("S, M");
		b009.setCategory("하의");
		b009.setUnitsInStock(70);
		b009.setCondition("얇음");
		b009.setFileName("B009.jpg");

		// 원피스
		Product c001 = new Product("Matilda nonfade belt denim ops", 68000, "블루/네이비", "16°C~20°C ");
		c001.setProductId("C001");
		c001.setDescription("모델처럼 장화와 함께 코디하면 귀엽게 보일 수도 있습니다. 단독으로 입으면 더 독특하고 말라보이는 바디라인을 연출할 수 있습니다:)");
		c001.setSize("F");
		c001.setCategory("원피스");
		c001.setUnitsInStock(100);
		c001.setCondition("보통");
		c001.setFileName("C001.jpg");

		Product c002 = new Product("새내기 밴딩 데님 원피스", 30900, "블루/네이비", "16°C~20°C");
		c002.setProductId("C002");
		c002.setDescription("데님 원단이 전혀 촌스럽지 않고 고급스러운 무드를 선사해줘요! 생활에 풀림이 없는 튼튼한 똑딱이로 제작되어 걱정없이 편안하게 입으실 수 있습니다:)");
		c002.setSize("F");
		c002.setCategory("원피스");
		c002.setUnitsInStock(100);
		c002.setCondition("보통");
		c002.setFileName("C002.jpg");

		Product c003 = new Product("Frill mini dress", 94000, "핑크", "26°C~29°C");
		c003.setProductId("C003");
		c003.setDescription("숄더 스트랩을 x자, 홀터, 리본으로 다양하게 연출이 가능한 원피스입니다. 정교한 프릴 디테일로 러블리함을 더했습니다.");
		c003.setSize("F");
		c003.setCategory("원피스");
		c003.setUnitsInStock(100);
		c003.setCondition("얇음");
		c003.setFileName("C003.jpg");

		Product c004 = new Product("엘리디움 스트랩 뷔스티에 셔츠 롱 원피스 세트", 49900, "화이트/아이보리", "16°C~20°C");
		c004.setProductId("C004");
		c004.setDescription(
				"군더더기 없이 깔끔한 디자인이 멋스러운 투피스 소개해드려요. 롱한 길이감의 셔츠 원피스에 블랙 뷔스티에가 세트인 제품으로 각각 단독으로 활용하실 수도 있으며, 세트로도 착용하실 수 있어 적극 추천드립니다. 격식 룩, 데이트룩 등 어디에나 잘 어울려요!");
		c004.setSize("XS, S, M, L");
		c004.setCategory("원피스");
		c004.setUnitsInStock(100);
		c004.setCondition("보통");
		c004.setFileName("C004.jpg");

		Product c005 = new Product("펌킨 스트링 백스트랩 미니원피스", 40500, "바이올렛", "30°C~");
		c005.setProductId("C005");
		c005.setDescription(
				"길이감도 적당하고 핏도 이쁘고 귀엽습니다. 스트링으로 둥글게 모양 잡아주는 포인트가 진짜 귀여운 포인트입니다. 색상이 뮤트한 바이올렛이어서 아방방하게 귀여운 원피스입니다.");
		c005.setSize("F");
		c005.setCategory("원피스");
		c005.setUnitsInStock(100);
		c005.setCondition("얇음");
		c005.setFileName("C005.jpg");

		Product c006 = new Product("허니빈 플라워 리본 셔링 롱 원피스", 38800, "블루/네이비", "26°C~29°C ");
		c006.setProductId("C006");
		c006.setDescription("데이트룩은 물론, 데일리룩으로도 부담없이 입기 좋은 원피스, 새로운 시즌을 맞이하는 한발 앞선 아이템!");
		c006.setSize("XS, S, M, L, XL");
		c006.setCategory("원피스");
		c006.setUnitsInStock(100);
		c006.setCondition("얇음");
		c006.setFileName("C006.jpg");

		Product c007 = new Product("TIFFANY DRESS", 48000, "그레이/블랙", "26°C~29°C ");
		c007.setProductId("C007");
		c007.setDescription(
				"은은한 광택과 비침으로 페미닌한 무드가 인상적인 원피스입니다. 부드러운 라운드 네크라인 디자인의 밑으로 갈수록 플레어하게 퍼지는 실루엣으로 더욱 여리하고 아름다운 상체 실루엣을 선사합니다. 암홀라인의 스트링을 조여 셔링을 잡아 리본매듭을 지어 착용해보실 수 있는 원피스입니다.");
		c007.setSize("XS, S, M, L, XL");
		c007.setCategory("원피스");
		c007.setUnitsInStock(100);
		c007.setCondition("보통");
		c007.setFileName("C007.jpg");

		Product c008 = new Product("트위드 셔링 원피스", 50000, "블루/네이비", "26°C~29°C ");
		c008.setProductId("C008");
		c008.setDescription("여성스러운 디자인과 도톰한 트위드 원단으로 포인트를 준 원피스입니다. 세련된 셔링 디테일이 여성스러움을 더해주며, 롱한 기장감으로 체형 커버도 가능합니다.");
		c008.setSize("S, M, L, XL");
		c008.setCategory("원피스");
		c008.setUnitsInStock(100);
		c008.setCondition("보통");
		c008.setFileName("C008.jpg");

		Product c009 = new Product("야자수 플라워 롱원피스", 47000, "그린", "26°C~29°C ");
		c009.setProductId("C009");
		c009.setDescription("캐주얼한 무드가 느껴지는 플라워 패턴의 롱 원피스입니다. 유니크한 디자인과 부담스럽지 않은 실루엣으로 다양한 스타일링에 활용할 수 있습니다.");
		c009.setSize("F");
		c009.setCategory("원피스");
		c009.setUnitsInStock(100);
		c009.setCondition("보통");
		c009.setFileName("C009.jpg");

		// 아우터
		Product d001 = new Product("허브 썸머 트위드 자켓", 75000, "블루/네이비", "21°C~25°C");
		d001.setProductId("D001");
		d001.setDescription(
				"미니 기장감으로 신체 비율을 살려주는 건 물론<br>입체감 있는 텍스처와 은은하게 반짝이는 원사가 더해져<br>툭 걸치기만 해도 고급스러운 스타일링을 완성시켜주는 아이템이에요");
		d001.setSize("S, M");
		d001.setCategory("아우터");
		d001.setUnitsInStock(100);
		d001.setCondition("보통");
		d001.setFileName("D001.png");

		Product d002 = new Product("브이넥 트임 니트 가디건", 26500, "오렌지", "16°C~20°C");
		d002.setProductId("D002");
		d002.setDescription("톡톡한 짜임으로 흐물거림 없이 핏을 예쁘게 잡아줘요!<br>밑단 시보리 부분은 짱짱하게 허리 라인을 잡아주고<br>트임으로 포인트를 더해주어 슬림하게 연출해줘요");
		d002.setSize("S, M, L, XL");
		d002.setCategory("아우터");
		d002.setUnitsInStock(100);
		d002.setCondition("보통");
		d002.setFileName("D002.png");

		Product d003 = new Product("PUFF DENIM JACKET", 82000, "블루/네이비", "21°C~25°C");
		d003.setProductId("D003");
		d003.setDescription("이 자켓 정말 귀여워서 한눈에 반한 제품입니다! 숏한 기장감과 소매 부분 세미 퍼프 디테일은 자켓의 분위기를 더욱 사랑스럽게 완성시켜줍니다!");
		d003.setSize("F");
		d003.setCategory("아우터");
		d003.setUnitsInStock(100);
		d003.setCondition("보통");
		d003.setFileName("D003.jpg");

		Product d004 = new Product("데일리 린넨 여리 가디건", 20900, "화이트/아이보리", "30°C~");
		d004.setProductId("D004");
		d004.setDescription("한 여름에 햇빛과 강한 에어컨을 가려주는 크롭 기장감의 얇고 가벼운 루즈핏의 긴팔 가디건;) 한여름까지 살았다 템으로 가져보세요!");
		d004.setSize("F, XL");
		d004.setCategory("아우터");
		d004.setUnitsInStock(100);
		d004.setCondition("얇음");
		d004.setFileName("D004.jpg");

		Product d005 = new Product("데일리 365일 파스텔 숏패딩", 33800, "베이지/브라운", "~9°C");
		d005.setProductId("D005");
		d005.setDescription(
				"오버핏과 빵빵한 웰론으로 가벼우면서도 따뜻한 숏패딩입니당~! 넉넉한 핏감으로 두꺼운 기모 상의도 같이 입기 편한데요. 베이직한 디자인과 심플한 컬러부터 구름같은 풍실합니다! 손이 자주 갈 아우터랍니다!");
		d005.setSize("F");
		d005.setCategory("아우터");
		d005.setUnitsInStock(100);
		d005.setCondition("두꺼움");
		d005.setFileName("D005.jpg");

		Product d006 = new Product("155cm 썸끝 연애 시작 키작녀 트렌치 코트 미니 원피스", 67900, "베이지/브라운", "10°C~15°C"); 
		d006.setProductId("D006");
		d006.setDescription("이번에 소개드릴 상품은 숏한 기장감의 트렌치 코트인데요. 부담스럽지 않고 깔끔하게 떨어지는 핏의 비율까지 좋아보이는 아이템입니다!");
		d006.setSize("F");
		d006.setCategory("아우터");
		d006.setUnitsInStock(100);
		d006.setCondition("보통");
		d006.setFileName("D006.jpg");

		Product d007 = new Product("델리아배색 트위드 반팔 숏 자켓", 59900, "화이트/아이보리", "30°C~");
		d007.setProductId("D007");
		d007.setDescription(
				"라운드 네크라인 디자인으로 깔끔한 페이스 라인으로 연출되며 네크라인, 소매단, 밑단의 배색 마감 처리로 전체적인 룩에 포인트가 되어주고요! 바스트 라인에 배색을 더한 사각 포켓 디테일로 밋밋함을 덜어주었습니다.");
		d007.setSize("F");
		d007.setCategory("아우터");
		d007.setUnitsInStock(100);
		d007.setCondition("얇음");
		d007.setFileName("D007.jpg");

		Product d008 = new Product("화이트 앙고라 가디건", 41900, "화이트/아이보리", "~9°C");
		d008.setProductId("D008");
		d008.setDescription("일단 이쁘고 편안하게 입기 좋습니다~! 털이 많아서 풍성한 겨울을 지낼 수 있는 따뜻한 가디건이에요 :)");
		d008.setSize("M, L, XL");
		d008.setCategory("아우터");
		d008.setUnitsInStock(100);
		d008.setCondition("두꺼움");
		d008.setFileName("D008.jpg");

		Product d009 = new Product("여름까지 쭉 왕박시 벌룬 볼레로 가디건", 16800, "그레이/블랙", "26°C~29°C");
		d009.setProductId("D009");
		d009.setDescription("소매를 덮는 소매 기장감과 아방한 벌룬 소재로 팔뚝살까지 체형 커버 가능한 가을까지 쭉 입기 좋은 볼레로 가디건입니다.");
		d009.setSize("F");
		d009.setCategory("아우터");
		d009.setUnitsInStock(100);
		d009.setCondition("얇음");
		d009.setFileName("D009.jpg");

		listOfProducts.add(a001);
		listOfProducts.add(a002);
		listOfProducts.add(a003);
		listOfProducts.add(a004);
		listOfProducts.add(a005);
		listOfProducts.add(a006);
		listOfProducts.add(a007);
		listOfProducts.add(a008);
		listOfProducts.add(a009);

		listOfProducts.add(b001);
		listOfProducts.add(b002);
		listOfProducts.add(b003);
		listOfProducts.add(b004);
		listOfProducts.add(b005);
		listOfProducts.add(b006);
		listOfProducts.add(b007);
		listOfProducts.add(b008);
		listOfProducts.add(b009);

		listOfProducts.add(c001);
		listOfProducts.add(c002);
		listOfProducts.add(c003);
		listOfProducts.add(c004);
		listOfProducts.add(c005);
		listOfProducts.add(c006);
		listOfProducts.add(c007);
		listOfProducts.add(c008);
		listOfProducts.add(c009);

		listOfProducts.add(d001);
		listOfProducts.add(d002);
		listOfProducts.add(d003);
		listOfProducts.add(d004);
		listOfProducts.add(d005);
		listOfProducts.add(d006);
		listOfProducts.add(d007);
		listOfProducts.add(d008);
		listOfProducts.add(d009);

	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

	public void addProduct(Product product) { 
		listOfProducts.add(product);
	}
}