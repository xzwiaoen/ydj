package xiao.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import xiao.model.Tgupiao;
import xiao.service.base.GupiaoServiceI;

@Namespace("/base")
@Action
public class GupiaoAction extends BaseAction<Tgupiao>{

	/**
	 * 注入业务逻辑，使当前action调用service.xxx的时候，直接是调用基础业务逻辑
	 * 
	 * 如果想调用自己特有的服务方法时，请使用((TServiceI) service).methodName()这种形式-强转类型调用
	 * 
	 * @param service
	 */
	@Autowired
	public void setService(GupiaoServiceI service) {
		this.service = service;
	}
	
	public void say(){
		super.writeJson("aa");
	}
}
