package com.style.www.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.style.www.domain.Category;
import com.style.www.domain.Product;
import com.style.www.repository.CategoryRepository;
import com.style.www.repository.ProductRepository;
import com.style.www.service.InitDataService;

@Service
@Transactional(readOnly=false, rollbackFor=Exception.class)
public class IninDataServiceImpl implements InitDataService{
	
	@Autowired private CategoryRepository categoryRepository;
	@Autowired private ProductRepository productRepository;
	
	@Override
	public void init() {
		initCategories();
		initSubCategories();
		
		//아우터 하위 카테고리
		initOuterCoat();
		initOuterJacket();
		initOuterPadding();
		
		//탑 하위 카테고리
		initTopKnit();
		initTopCadigan();
		initTopShirt();
		
		//바지 하위 카테고리
		initPantsSkinny();
		initPantsSlacks();
		initPantsBaggy();
		
		//신발 하위 카테고리
		initShoesLoafer();
		initShoesWalker();
		initShoesSneakers();
		
		//가방 하위 카테고리
		initBagBackpack();
		initBagShoulderBag();
		initBagClutchBag();
		
		//악세사리 카테고리
		initAccessoryRing();
		initAccessoryNecklace();
		initAccessoryBangle();
	}

	//카테고리의 하위 클래스 정보
	private void initSubCategories() {
		initOuterSub();
		initTopSub();
		initPantsSub();
		initShoesSub();
		initBagSub();
		initAccessorySub();
		
	}

	//아우터 정보 저장
	private void initOuterSub() {
		Category category = categoryRepository.findOne(1L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("coat", category));
		categoryList.add(new Category("jacket", category));
		categoryList.add(new Category("padding", category));
		categoryRepository.save(categoryList);
	}

	private void initOuterCoat() {
		Category category = categoryRepository.findOne(7L);
		List<Product> outers = new ArrayList<Product>();
		outers.add(new Product("coat1", "간지 코트", 78000, category));
		outers.add(new Product("coat2", "원버튼 지퍼 코트", 99000, category));
		outers.add(new Product("coat3", "베이직 코트", 140000, category));
		outers.add(new Product("coat4", "차이나 사각 체크 가오리 코트", 120000, category));
		outers.add(new Product("coat5", "이중 카라 코트", 145000, category));
		
		productRepository.save(outers);
	}
	
	private void initOuterJacket(){
		Category category = categoryRepository.findOne(8L);
		List<Product> outers = new ArrayList<Product>();
		outers.add(new Product("jacket1","간지 자켓",65000,category));
		outers.add(new Product("jacket2","배색 퀼팅 자켓",100000,category));
		outers.add(new Product("jacket3","투버튼 홈스방 자켓",90000,category));
		outers.add(new Product("jacket4","원버튼 차이나 카라 자켓",65000,category));
	
		productRepository.save(outers);
	}
	
	private void initOuterPadding(){
		Category category = categoryRepository.findOne(9L);
		List<Product> outers = new ArrayList<Product>();
		outers.add(new Product("padding1","마이너 항공 자켓",133000,category));
		outers.add(new Product("padding2","지퍼 탈부착 패딩",150000,category));
		outers.add(new Product("padding3","이중 지퍼 패딩",99000,category));
		outers.add(new Product("padding4","양털 카라 점퍼",107000,category));
	
		productRepository.save(outers);
	}
	
	//탑 정보 저장
	private void initTopSub() {
		Category category = categoryRepository.findOne(2L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("knit", category));
		categoryList.add(new Category("shirt", category));
		categoryList.add(new Category("cadigan", category));
		categoryRepository.save(categoryList);
	}
	
	private void initTopKnit() {
		Category category = categoryRepository.findOne(10L);
		List<Product> tops = new ArrayList<Product>();
		tops.add(new Product("kint1","베이직 니트",25000,category));
		tops.add(new Product("kint2","투포켓 니트",30000,category));
		tops.add(new Product("kint3","탐탐 플리 니트",45000,category));
		tops.add(new Product("kint4","투톤 꽈배기 니트",34000,category));
		tops.add(new Product("kint5","케이블 라운드 니트",47000,category));
	
		productRepository.save(tops);
	}
	
	private void initTopShirt(){
		Category category = categoryRepository.findOne(11L);
		List<Product> tops = new ArrayList<Product>();
		tops.add(new Product("shirt1","베이직 셔츠",25000,category));
		tops.add(new Product("shirt2","에이트 기모 남방",35000,category));
		tops.add(new Product("shirt3","헤링본 포켓 남방",37000,category));
		tops.add(new Product("shirt4","체크 베이직 셔츠",33000,category));
		tops.add(new Product("shirt5","보카시 체크 셔츠",45000,category));
	
		productRepository.save(tops);
	}
	
	private void initTopCadigan(){
		Category category = categoryRepository.findOne(12L);
		List<Product> tops = new ArrayList<Product>();
		tops.add(new Product("cadigan1","리빌들 숄 가디건",33000,category));
		tops.add(new Product("cadigan2","양기모 숄 가디건",45000,category));
		tops.add(new Product("cadigan3","캔들 루핀 가디건",72000,category));
		tops.add(new Product("cadigan4","체크 가디건",65000,category));
		tops.add(new Product("cadigan5","홀릭 가디건",20000,category));
		
		productRepository.save(tops);
	}
	
	private void initPantsSub(){
		Category category = categoryRepository.findOne(3L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("skinny",category));
		categoryList.add(new Category("slacks",category));
		categoryList.add(new Category("baggy",category));
		
		categoryRepository.save(categoryList);
	}
	
	private void initPantsSkinny(){
		Category category = categoryRepository.findOne(13L);
		List<Product> pants = new ArrayList<Product>();
		pants.add(new Product("skinny1","브러쉬 스키니",34000,category));
		pants.add(new Product("skinny2","생지 데님 스키니",30000,category));
		pants.add(new Product("skinny3","슬림 일자 팬츠",44000,category));
		pants.add(new Product("skinny4","크랙 워싱 슬림 스키니",5400,category));
		pants.add(new Product("skinny5","슬림핏 스키니",24000,category));
	
		productRepository.save(pants);
	}
	
	private void initPantsSlacks(){
		Category category = categoryRepository.findOne(14L);
		List<Product> pants = new ArrayList<Product>();
		pants.add(new Product("slacks1","오비 배색 슬랙스",36000,category));
		pants.add(new Product("slacks2","비조 울 슬림 슬랙스",37000,category));
		pants.add(new Product("slacks3","기모 스판 슬랙스",45000,category));
		pants.add(new Product("slacks4","울 모직 슬랙스",43000,category));
		pants.add(new Product("slacks5","매스더 윈터 슬랙스",38000,category));
	
		productRepository.save(pants);
	}
	
	private void initPantsBaggy(){
		Category category = categoryRepository.findOne(15L);
		List<Product> pants = new ArrayList<Product>();
		pants.add(new Product("baggy1","배기 카고 팬츠",45000,category));
		pants.add(new Product("baggy2","트레이님 배기 팬츠",44000,category));
		pants.add(new Product("baggy3","와치 텐션 배기 팬츠",37000,category));
		pants.add(new Product("baggy4","슬림 배기 스키니",55000,category));
		pants.add(new Product("baggy5","스냅 배기 팬츠",50000,category));
	
		productRepository.save(pants);
	}
	
	private void initShoesSub(){
		Category category = categoryRepository.findOne(4L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("loafer",category));
		categoryList.add(new Category("walker",category));
		categoryList.add(new Category("sneakers",category));
		
		categoryRepository.save(categoryList);
	}
	
	private void initShoesLoafer(){
		Category category = categoryRepository.findOne(16L);
		List<Product> shoes = new ArrayList<Product>();
		shoes.add(new Product("loafer1","스웨이드 윙팁",48000,category));
		shoes.add(new Product("loafer2","스트레이트 팁 슈즈",88000,category));
		shoes.add(new Product("loafer3","벨티드 베이직 로퍼",48000,category));
		shoes.add(new Product("loafer4","패니 가죽 로퍼",108000,category));
		shoes.add(new Product("loafer5","방울 딜 로퍼",58000,category));
		
		productRepository.save(shoes);
	}
	
	private void initShoesWalker(){
		Category category = categoryRepository.findOne(17L);
		List<Product> shoes = new ArrayList<Product>();
		shoes.add(new Product("walker1","스웨이드 윙팁 부츠",51000,category));
		shoes.add(new Product("walker2","어나더 배색 윙팁 부츠",151000,category));
		shoes.add(new Product("walker3","리스트 오버 워커",48000,category));
		shoes.add(new Product("walker4","타우 양털 부츠",650000,category));
		shoes.add(new Product("walker5","양털 보드 워커",730000,category));
		
		productRepository.save(shoes);
	}
	
	private void initShoesSneakers(){
		Category category = categoryRepository.findOne(18L);
		List<Product> shoes = new ArrayList<Product>();
		shoes.add(new Product("sneakers1","바로크 스터드 슬립온",48000,category));
		shoes.add(new Product("sneakers2","네온 카모 스니커즈",75000,category));
		shoes.add(new Product("sneakers3","스웨어 로밍 슈즈",35000,category));
		shoes.add(new Product("sneakers4","카모 스니커즈",37000,category));
		shoes.add(new Product("sneakers5","캔버스 슈즈",43000,category));
		
		productRepository.save(shoes);
	}
	
	private void initBagSub(){
		Category category = categoryRepository.findOne(5L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("backpack",category));
		categoryList.add(new Category("shoulderBag",category));
		categoryList.add(new Category("clutchBag",category));
		
		categoryRepository.save(categoryList);
	}
	
	private void initBagBackpack(){
		Category category = categoryRepository.findOne(19L);
		List<Product> bag = new ArrayList<Product>();
		bag.add(new Product("backpack1","멀티 클러치 백팩",51000,category));
		bag.add(new Product("backpack2","버튼 빅 포켓 백팩",65000,category));
		bag.add(new Product("backpack3","스컹크 멀티백",55000,category));
		bag.add(new Product("backpack4","카모 플라쥬 백팩",44000,category));
		bag.add(new Product("backpack5","큐브 백팩",66000,category));
		
		productRepository.save(bag);
	}
	
	private void initBagShoulderBag(){
		Category category = categoryRepository.findOne(20L);
		List<Product> bag = new ArrayList<Product>();
		bag.add(new Product("shoulderBag1","카모 코튼 토드백",41000,category));
		bag.add(new Product("shoulderBag2","스웨어드 크로스 백",35000,category));
		bag.add(new Product("shoulderBag3","캐주얼 토드백",50000,category));
		bag.add(new Product("shoulderBag4","캐주얼 멀티백",55000,category));
		bag.add(new Product("shoulderBag5","투포켓 카모 토드백",60000,category));
		
		productRepository.save(bag);
	}
	
	private void initBagClutchBag(){
		Category category = categoryRepository.findOne(21L);
		List<Product> bag = new ArrayList<Product>();
		bag.add(new Product("clutchBag1", "헤링본 베이직 클러치",51000,category));
		bag.add(new Product("clutchBag2", "카모 퀼딩 파우치",45000,category));
		bag.add(new Product("clutchBag3", "펜풋 클러치",48000,category));
		bag.add(new Product("clutchBag4", "악어 페이크 클러치",78000,category));
		bag.add(new Product("clutchBag5", "체크 지퍼 파우치",38000,category));
		
		productRepository.save(bag);
	}
	
	private void initAccessorySub(){
		Category category = categoryRepository.findOne(6L);
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("ring",category));
		categoryList.add(new Category("necklace",category));
		categoryList.add(new Category("bangle",category));
		
		categoryRepository.save(categoryList);
	}
	
	private void initAccessoryRing(){
		Category category = categoryRepository.findOne(22L);
		List<Product> accessory = new ArrayList<Product>();
		accessory.add(new Product("ring1","모노 시크 반지",15000,category));
		accessory.add(new Product("ring2","블랙 쉐도우 링",20000,category));
		accessory.add(new Product("ring3","두줄 십자가 링",25000,category));
		accessory.add(new Product("ring4","그물 꼬임 반지",17000,category));
		accessory.add(new Product("ring5","케일 군도 반지",13000,category));
		
		productRepository.save(accessory);
	}
	
	private void initAccessoryNecklace(){
		Category category = categoryRepository.findOne(23L);
		List<Product> accessory = new ArrayList<Product>();
		accessory.add(new Product("necklace1","인셉션 팽이 목걸이",10000,category));
		accessory.add(new Product("necklace2","스퀘어 목걸이",14000,category));
		accessory.add(new Product("necklace3","낙엽 목걸이",18000,category));
		accessory.add(new Product("necklace4","국기 수염 목걸이",20000,category));
		accessory.add(new Product("necklace5","해골 목걸이",25000,category));
		
		productRepository.save(accessory);
	}

	private void initAccessoryBangle(){
		Category category = categoryRepository.findOne(24L);
		List<Product> accessory = new ArrayList<Product>();
		accessory.add(new Product("bangle1","크라운 4링 팔찌",10000,category));
		accessory.add(new Product("bangle2","스크류 매듭 팔찌",13000,category));
		accessory.add(new Product("bangle3","2칼라 포인트 팔찌",19000,category));
		accessory.add(new Product("bangle4","투톤 크리스탈 팔찌",23000,category));
		accessory.add(new Product("bangle5","레이어드 팔찌",16000,category));
		
		productRepository.save(accessory);
	}
	
	private void initCategories() {
		List<Category> categoryList = new ArrayList<Category>();
		categoryList.add(new Category("OUTER"));
		categoryList.add(new Category("TOP"));
		categoryList.add(new Category("PANTS"));
		categoryList.add(new Category("SHOES"));
		categoryList.add(new Category("BAG"));
		categoryList.add(new Category("ACCESSORY"));
		
		categoryRepository.save(categoryList);
	}

}
