package sport.service.item.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sport.bean.Item;
import sport.dao.Class_Mapper;
import sport.dao.ItemMapper;
import sport.service.item.ItemService;
@Service
public class ItemImpl implements ItemService{
    @Autowired
    private ItemMapper itemmapper;
	@Override
	public List<Item> getItemsByGrade(Integer id) {
		// TODO Auto-generated method stub
		//ItemMapper
		List<Item> items = itemmapper.selectByGrade(id);
		return items;
	}
	@Override
	public Item getItemById(Integer id) {
		// TODO Auto-generated method stub
		return itemmapper.selectByPrimaryKey(id);
	}
	@Override
	public List<Item> getAllItems() {
		// TODO Auto-generated method stub
		List<Item> selectAllItems = itemmapper.selectAllItems();
		
		return selectAllItems;
	}

}
