package com.himedia.twoving.controller;

import com.himedia.twoving.action.Action;

import com.himedia.twoving.action.IndexAction;
import com.himedia.twoving.product.detailAction;
import com.himedia.twoving.product.genreAction;
import com.himedia.twoving.product.kindAction;

public class ActionFactory {
	
	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() {return itc;}
	
	
	public Action getAction(String command) {
		Action ac = null;
		
		if(command.equals("index")) ac = new IndexAction();
		
//		product(main 화면)
		else if(command.equals("Tdetail")) ac = new detailAction();
		else if(command.equals("genre")) ac = new genreAction();
		else if(command.equals("kind")) ac = new kindAction();
	
		return ac;
	}

}
