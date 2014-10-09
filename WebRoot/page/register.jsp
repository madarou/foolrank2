<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

			<form class="form-horizontal" role="form" action = "${path}/register/createuser" method= "post" >
				 <div class="form-group">
					<label for="email"  class="col-sm-2 col-md-offset-2 control-label">电子邮件地址<span class="text-warning">*</span></label>
					<div class="col-sm-6">
					  <input type="text" class="form-control" name="email" id="regemail"/><!-- <span id = "emailInfo" class="alertInfo"></span> -->
					</div>
				 </div>	
				 <div class="form-group">
					<label for="password" class="col-sm-2 col-md-offset-2 control-label"><span>密码</span><span class="text-warning">*</span></label>
					<div class="passwordLevl"></div>
					<div class="col-sm-6">
					  <input type="password" class="form-control" name="password" id="regpassword" />
					</div>
				</div>	
				
			 	<div class="form-group">
					<label for="school" class="col-sm-2 col-md-offset-2 control-label"><span>所在院校</span><span class="text-warning">*</span></label>
					<div class="col-sm-6">
					  <input type="text" class="form-control" name="school" id="school"/><span id = "schoolInfo" class="alertInfo"></span>
					</div>
					<label class="control-label col-sm-2 col-md-offset-2 "></label>
					<div class="col-sm-6">
					  <p>请填写你所在的学校</p>
					  <p>填写后不可修改，请谨慎填写</p>
					</div>
			    </div>
			
			    <div class="form-group">
				    <label class="col-sm-2 col-md-offset-2 control-label"><span>验证问题</span></label>
				    <div class="col-sm-6">
						<span id="validateQuestion"></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="answer" class="col-sm-2 col-md-offset-2 control-label"><span>回答</span><span class="text-warning">*</span></label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="answer" id="answer" />
					</div>
					<label for="answer" class="col-sm-2 col-md-offset-2 control-label"></label>
					<div class="col-sm-6">
						<span id = "answerInfo" class="alertInfo"></span>
					</div>
					
					
					<input id="rightanswer" type ="hidden" value="">
			    </div>
			    
			    <div class="form-group">
				    <label class="col-sm-2 col-md-offset-2 control-label">公司</label>
				    <div class="col-sm-6">
						<input type="text" class="form-control" name="company" id="company"></input>
						
					</div>
					
					<label class="col-sm-2 col-md-offset-2 control-label"></label>
				    <div class="col-sm-6">
						<label class="regComment">请填写你所在的公司</label>
					</div>
					
					
				</div> 
				
			
			</form>
<script src="/uunemo/resources/js/register.js"></script>	
   