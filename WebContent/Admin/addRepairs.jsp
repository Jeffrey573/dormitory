<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>报修情况登记</title>
<link href="../css/adminframe.css" rel="stylesheet">
<script>
	var he=document.body.clientHeight-105
	document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>
<script>
function showsubmenu(sid)
{
	whichEl = eval("submenu" + sid);
	imgmenu = eval("imgmenu" + sid);
	if (whichEl.style.display == "none")
	{
		eval("submenu" + sid + ".style.display=\"\";");
		imgmenu.background="../images/main_47.gif";
	}else
	{
		eval("submenu" + sid + ".style.display=\"none\";");
		imgmenu.background="../images/main_48.gif";
	}
}
</script>
<script>
var  highlightcolor='#c1ebff';
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
</head>
<body>
<div id="container">
    <div id="header">
    	<h1><b>学生宿舍管理系统---管理员端</b></h1>
    </div>
    <div id="guide">
    	<label for="userlabel">当前用户：<%=session.getAttribute("username") %></label> 	
    </div>
    <div id=main>
    	<div id="leftbar">
    		<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
 				<tr>
    					<td valign="top">
    						<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      							<tr><td>
        							<table width="100%" border="0" cellspacing="0" cellpadding="0">
          									<tr>
            									<td height="23" background="../images/main_47.gif" id="imgmenu1" class="menu_title" 
            									       onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" 
            									       onMouseOut="this.className='menu_title';" style="cursor:hand">
            										<table width="100%" border="0" cellspacing="0" cellpadding="0">
              										<tr>
                										<td width="18%">&nbsp;</td>
                										<td width="82%" class="STYLE1">系统管理</td>
              										</tr>
            										</table>
            									</td>
          									</tr>
          									<tr><td background="../images/main_51.gif" id="submenu1">
			 										<div class="sec_menu" >  
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
              												<tr><td>
               													 	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  													<tr>
                    													<td width="16%" height="25">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td width="84%" height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        														<tr>
                          															<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          																<span class="STYLE3"><a href="addUser.jsp">添加用户</a></span>
                          															</td>
                        														</tr>
                   														 	</table>
                   														 </td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="../QueryServlet">用户信息维护</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="updatePwd.jsp">密码修改</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                                                        			</table>
                                                 				</td></tr>
                                                            <tr>
                                                             	<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              												 </tr>
                                                         </table>
                                                     </div>
                                                 </td></tr>      
                                        </table>
                                </td></tr>
                                <tr><td>
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
          									<tr>
            									<td height="23" background="../images/main_47.gif" id="imgmenu2" class="menu_title" 
            									       onMouseOver="this.className='menu_title2';" onClick="showsubmenu(2)" 
            									       onMouseOut="this.className='menu_title';" style="cursor:hand">
            										<table width="100%" border="0" cellspacing="0" cellpadding="0">
              										<tr>
                										<td width="18%">&nbsp;</td>
                										<td width="82%" class="STYLE1">宿舍信息管理</td>
              										</tr>
            										</table>
            									</td>
          									</tr>
          									<tr><td background="../images/main_51.gif" id="submenu2">
			 										<div class="sec_menu" >  
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
              												<tr><td>
               													 	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  													<tr>
                    													<td width="16%" height="25">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td width="84%" height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        														<tr>
                          															<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          																<span class="STYLE3"><a href="addDormitory.jsp">宿舍信息登记</a></span>
                          															</td>
                        														</tr>
                   														 	</table>
                   														 </td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="../QueryallDorServlet">宿舍信息维护</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                                                        			</table>
                                                 				</td></tr>
                                                            <tr>
                                                             	<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              												 </tr>
                                                         </table>
                                                     </div>
                                                 </td></tr>      
                                        </table>
                                </td></tr>
                                <tr><td>
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
          									<tr>
            									<td height="23" background="../images/main_47.gif" id="imgmenu3" class="menu_title" 
            									       onMouseOver="this.className='menu_title2';" onClick="showsubmenu(3)" 
            									       onMouseOut="this.className='menu_title';" style="cursor:hand">
            										<table width="100%" border="0" cellspacing="0" cellpadding="0">
              										<tr>
                										<td width="18%">&nbsp;</td>
                										<td width="82%" class="STYLE1">学生入住管理</td>
              										</tr>
            										</table>
            									</td>
          									</tr>
          									<tr><td background="../images/main_51.gif" id="submenu3">
			 										<div class="sec_menu" >  
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
              												<tr><td>
               													 	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  													<tr>
                    													<td width="16%" height="25">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td width="84%" height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        														<tr>
                          															<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          																<span class="STYLE3"><a href="addStudent.jsp">学生入住登记</a></span>
                          															</td>
                        														</tr>
                   														 	</table>
                   														 </td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="../QueryallStuServlet">入住信息查询</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="studentChange.jsp">学生宿舍调换</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="studentLeave.jsp">学生离校管理</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                                                        			</table>
                                                 				</td></tr>
                                                            <tr>
                                                             	<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              												 </tr>
                                                         </table>
                                                     </div>
                                                 </td></tr>      
                                        </table>
                                </td></tr>
                                <tr><td>
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
          									<tr>
            									<td height="23" background="../images/main_47.gif" id="imgmenu4" class="menu_title" 
            									       onMouseOver="this.className='menu_title2';" onClick="showsubmenu(4)" 
            									       onMouseOut="this.className='menu_title';" style="cursor:hand">
            										<table width="100%" border="0" cellspacing="0" cellpadding="0">
              										<tr>
                										<td width="18%">&nbsp;</td>
                										<td width="82%" class="STYLE1">卫生检查管理</td>
              										</tr>
            										</table>
            									</td>
          									</tr>
          									<tr><td background="../images/main_51.gif" id="submenu4">
			 										<div class="sec_menu" >  
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
              												<tr><td>
               													 	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  													<tr>
                    													<td width="16%" height="25">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td width="84%" height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        														<tr>
                          															<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          																<span class="STYLE3"><a href="addHealth.jsp">卫生检查登记</a></span>
                          															</td>
                        														</tr>
                   														 	</table>
                   														 </td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="../QueryallHelServlet">卫生情况查询</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                                                        			</table>
                                                 				</td></tr>
                                                            <tr>
                                                             	<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              												 </tr>
                                                         </table>
                                                     </div>
                                                 </td></tr>      
                                        </table>
                                </td></tr>
                                
                                <tr><td>
                                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
          									<tr>
            									<td height="23" background="../images/main_47.gif" id="imgmenu6" class="menu_title" 
            									       onMouseOver="this.className='menu_title2';" onClick="showsubmenu(6)" 
            									       onMouseOut="this.className='menu_title';" style="cursor:hand">
            										<table width="100%" border="0" cellspacing="0" cellpadding="0">
              										<tr>
                										<td width="18%">&nbsp;</td>
                										<td width="82%" class="STYLE1">宿舍报修管理</td>
              										</tr>
            										</table>
            									</td>
          									</tr>
          									<tr><td background="../images/main_51.gif" id="submenu6">
			 										<div class="sec_menu" >  
														<table width="100%" border="0" cellspacing="0" cellpadding="0">
              												<tr><td>
               													 	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  													<tr>
                    													<td width="16%" height="25">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td width="84%" height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        														<tr>
                          															<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          																<span class="STYLE3"><a href="../QueryallReServlet">报修情况登记</a></span>
                          															</td>
                        														</tr>
                   														 	</table>
                   														 </td>
                  													</tr>
                  													<tr>
                    													<td height="23">
                    														<div align="center">
                    															<img src="../images/left.gif" width="10" height="10" />
                    														</div>
                    													</td>
                    													<td height="23">
                    														<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        													<tr>
                          														<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'">
                          															<span class="STYLE3"><a href="../QueryallLrServlet">报修情况查询</a></span>
                          														</td>
                        													</tr>
                    														</table>
                    													</td>
                  													</tr>
                                                        			</table>
                                                 				</td></tr>
                                                            <tr>
                                                             	<td height="5"><img src="../images/main_52.gif" width="151" height="5" /></td>
              												 </tr>
                                                         </table>
                                                     </div>
                                                 </td></tr>      
                                        </table>
                                </td></tr>
    						</table>
    					</td>
  				</tr>
  				<tr>
    				<td height="18" background="../images/main_58.gif">
    					<table width="100%" border="0" cellspacing="0" cellpadding="0">
      						<tr>
        						<td height="18" valign="bottom">
        							<div align="center" class="STYLE3">All copyright&copy;2019&nbsp;</div>
        						</td>
      						</tr>
    					</table>
    				</td>
                </tr>
            </table>
    	</div>
    	<div id="content">
    		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr><td height="30" background="../images/tab_05.gif">
  				<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
        			<td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        			<td>
        				<form name="query" method="post" action="../QueryReServlet">
							<div id="query">
										<label>区：</label>
    										<select id="selDor" name="dorSection1">
											<option value="一区">一区</option>
											<option value="二区">二区</option>
											<option value="三区">三区</option>
											<option value="四区">四区</option>
											<option value="五区">五区</option>
											<option value="六区">六区</option>
											<option value="七区">七区</option>
											<option value="八区">八区</option>
											</select>&nbsp;&nbsp;&nbsp;
										<label>栋：</label>
    										<select id="selDor" name="dorSection2">
											<option>请选择</option>
											<option value="一栋">一栋</option>
											<option value="二栋">二栋</option>
											<option value="三栋">三栋</option>
											<option value="四栋">四栋</option>
											</select>&nbsp;&nbsp;&nbsp;
										<label>宿舍号：</label>
											<input id="number" name="dorNumber" type="text" value="请输入数值">&nbsp;&nbsp;
								<input name="submit" type="submit" value="查询">&nbsp;
								<a href="../QueryallReServlet"><button name="queryAll" type="button" class="btn_queryAll">查询所有报修信息</button></a>
							</div>
						</form>
        			</td>
        			<td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      			</tr>
    			</table>
    		</td></tr>
    			
  			<tr><td>
  				<table width="100%" border="0" cellspacing="0" cellpadding="0">
      			<tr>
      				<td width="8" background="../images/tab_12.gif">&nbsp;</td>
        			<td>
        			<form name="tab" method="post" action="#">
        				<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          				<tr>
            				<th width="6%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">报修ID</span></div></th>
            				<th width="8%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">宿舍区栋</span></div></th>
            				<th width="6%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">宿舍号</span></div></th>
            				<th width="8%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">报修项目</span></div></th>
            				<th width="12%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">报修日期</span></div></th>
            				<th width="8%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">报修原因</span></div></th>
            				<th width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">报修人</span></div></th>
            				<th width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">联系方式</span></div></th>
            				<th width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">备注</span></div></th>
            				<th width="22%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2">操作</span></div></th>
          				</tr>
          				<!-- 此处增添记录 -->
          				<%=session.getAttribute("query") %>
    					</table>
    				</form>
    				</td>
  				</tr>
				</table>
    	</div>
    </div>
</div>
</body>
</html>