package com.aizant.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity

@Table(name = "CreateProject")
@Component

public class CreateProject {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String projectNo;
	private String projectDes;
	/*private CreateProject createProject;
	private Set<CreateProject> projects=new HashSet<CreateProject>(0);*/
	
/*	
	public CreateProject getCreateProject() {
		return createProject;
	}
	public CreateProject() {
		super();
	}

	public CreateProject(int id, String projectNo, String projectDes, CreateProject createProject,
			Set<CreateProject> projects) {
		super();
		this.id = id;
		this.projectNo = projectNo;
		this.projectDes = projectDes;
		this.createProject = createProject;
		this.projects = projects;
	}
	public void setCreateProject(CreateProject createProject) {
		this.createProject = createProject;
	}
	public Set<CreateProject> getProjects() {
		return projects;
	}
	public void setProjects(Set<CreateProject> projects) {
		this.projects = projects;
	}*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}
	public String getProjectDes() {
		return projectDes;
	}
	public void setProjectDes(String projectDes) {
		this.projectDes = projectDes;
	}
	
	}
