package in.co.rays.project_3.test;

import java.util.Iterator;
import java.util.List;

import in.co.rays.project_3.dto.PaymentDTO;
import in.co.rays.project_3.model.PaymentModelHibImp;

public class PaymentModelTest {

	public static void main(String[] args) {
		testadd();
		//testUpdate();
		//testFindByPk();
		//testDelete();
		//testSearch();
		
	}

	private static void testSearch() {
		PaymentDTO dto=new PaymentDTO();
		PaymentModelHibImp model=new PaymentModelHibImp();
		List list=model.search(dto, 0, 0);
		Iterator<PaymentDTO>it=list.iterator();
		while(it.hasNext()) {
			dto=it.next();
			System.out.println(dto.getId());
			System.out.println(dto.getName());
			System.out.println(dto.getAmount());
		}
	}

	private static void testDelete() {
		PaymentModelHibImp model=new PaymentModelHibImp();
		PaymentDTO dto=new PaymentDTO();
		dto.setId(4L);
		model.delete(dto);
		
		
	}

	private static void testFindByPk() {
		PaymentModelHibImp model=new PaymentModelHibImp();
		PaymentDTO dto=model.finfByPk(2);
		System.out.println(dto.getId());
		System.out.println(dto.getName());
		System.out.println(dto.getAmount());
		
	}

	private static void testUpdate() {
		PaymentDTO dto=new PaymentDTO();
		dto.setId(2L);
		dto.setName("dev");
		dto.setType("gpay");
		dto.setAmount(567839);
		PaymentModelHibImp model=new PaymentModelHibImp();
		model.update(dto);
		
		
	}

	private static void testadd() {
		PaymentDTO dto=new PaymentDTO();
		//dto.setId(1l);
		dto.setName("Hardeep");
		dto.setType("case");
		dto.setAmount(56789);
		PaymentModelHibImp model=new PaymentModelHibImp();
		long pk=model.save(dto);
		
	}

}
