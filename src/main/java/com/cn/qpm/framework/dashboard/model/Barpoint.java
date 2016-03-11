
package com.cn.qpm.framework.dashboard.model;

import java.util.List;

/*
 * 侧边导航sidebar的节点元素
 * 其实，这就是一个<li>的标签模型，它可以递归的应用于各种的<li>，它可以包含一个List<Barpoint>以此完成下级菜单栏
 * @date 2016年3月9日
 * @author Administrator
 *
 */
public class Barpoint {
	
	//li标题
	private String title;
	
	//li的icon标签
	private String icon;

	//Barpoint的类型：可选："url"/"father"  是一个url类型。直接跳转，或者是一个包含下拉菜单的父节点
	private String type;
	
	private String url;
	
	private List<Barpoint> kids;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<Barpoint> getKids() {
		return kids;
	}

	public void setKids(List<Barpoint> kids) {
		this.kids = kids;
	}
	
}
