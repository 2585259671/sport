package sport.util.criterion.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sport.bean.Criterion;
import sport.bean.Fresult;
import sport.bean.Result_;
import sport.bean.Student;
import sport.service.criterion.CriterionService;
import sport.service.item.ItemService;
import sport.util.criterion.CriterionUtil;

@Component
public class DefaultCriterion implements CriterionUtil{
	@Autowired
	private CriterionService criterionService;
	@Autowired
	private ItemService itemService;
	
	ITEMENUM item;
	@Override
	public List<Fresult> dealStudentScore(Student student, List<Result_> results) {
		// TODO Auto-generated method stub
		int type = 0;
		if(student.getSex().equals("女")) type=1;
		List<Fresult> fresults = new ArrayList<Fresult>();
		for(Result_ r:results){
			Fresult fresult=null;
			switch (r.getItem().getId()){
				case 11:
					//跳绳
					fresult = dealTiaosheng(r, type);break;
				case 14:
					//跳远
					fresult = dealNoAddItems(r, type, 14, true);break;
				case 5:
					//肺活量
					fresult = dealNoAddItems(r, type, 5, true);break;
				case 7:
					//50米跑
					fresult = dealNoAddItems(r, type, 7, false);break;
				default:System.out.println(new Exception("未查询到该项目的分数计算方法！"));
						fresult = new Fresult();
						fresult.setItem(itemService.getItemById(r.getItem().getId()));
						fresult.setValue(r.getScore());
			}
			fresults.add(fresult);
		}
		return fresults;
	}
	
	public Fresult dealTiaosheng(Result_ r, int type){
		Fresult fresult = new Fresult();
		List<Criterion> criterions = criterionService.getCriterionByItemId(11, type);
		//设置项目
		fresult.setItem(itemService.getItemById(11));
		//设置原始成绩
		fresult.setValue(r.getScore());
		//结果
		Criterion c = computeScore(criterions, r, true);
		fresult.setLevel(c.getLevl());
		fresult.setScore(c.getScore());
		//加分判断
		fresult.setAdd_score("0");
		Integer fullscore = Integer.parseInt(criterions.get(0).getStandrad());
		Integer value = Integer.parseInt(r.getScore())-fullscore;
		if(value>0){
			int add_score = value/2;
			fresult.setAdd_score(String.valueOf(add_score));
			fresult.setScore(String.valueOf(Integer.parseInt(fresult.getScore())+add_score));
		}
		return fresult;
	}
	
	/***
	 * 非加分项通用项目分数计算方法
	 * @param r
	 * @param type
	 * @param item_id
	 * @return
	 */
	public Fresult dealNoAddItems(Result_ r, int type, int item_id, boolean order) {
		Fresult fresult = new Fresult();
		List<Criterion> criterions = criterionService.getCriterionByItemId(item_id, type);
		//设置项目
		fresult.setItem(itemService.getItemById(item_id));
		//设置原始成绩
		fresult.setValue(r.getScore());
		//结果
		Criterion c = computeScore(criterions, r, order);
		System.out.println(r.getScore());
		fresult.setLevel(c.getLevl());
		fresult.setScore(c.getScore());
		return fresult;
	}
	
	/***
	 * 根据标准和成绩找到匹配的那一条标准
	 * order = 0 越小成绩越高
	 * @param criterions
	 * @param r
	 * @return
	 */
	public Criterion computeScore(List<Criterion> criterions, Result_ r, boolean order){
		if(!order){
			for(Criterion c : criterions){
				if(Float.parseFloat(r.getScore()) <= Float.parseFloat(c.getStandrad())){
					return c;
				}
			}
		}else{
			for(Criterion c : criterions){
				if(Float.parseFloat(r.getScore()) >= Float.parseFloat(c.getStandrad())){
					return c;
				}
			}
		}
		return criterions.get(0);
	}
	
}

enum ITEMENUM{
	TiaoSheng(11);
	private int id;
	private ITEMENUM(int id){
		this.id = id;
	}
	public int getId() {
		return id;
	}
}