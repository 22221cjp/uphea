<%@ taglib prefix="joy" uri="/jodd-joy" %>
<%@ taglib prefix="j" uri="/jodd" %>
<%@ taglib prefix="jfn" uri="/joddfn" %>
${jfn:initPage(pageContext)}
<!DOCTYPE html>
<html>
<head>
	<title><decora:title>uphea | the nice way of asking smart questions</decora:title></title>
	<link rel="Shortcut Icon" href="/uphea.ico" />
	<link rel="icon" href="/uphea.ico" />
	<meta name="description" content="uphea - the nice way of asking smart questions"/>
	<meta name="keywords" content="question, opinion, vote, poll, answer, jodd, java, source"/>
	<meta property="og:site_name" content="uphea"/>
	<link href="${CTX}/reset.css" rel="stylesheet" type="text/css" />
	<link href="${CTX}/960_24_col.css" rel="stylesheet" type="text/css" />
	<link href="${CTX}/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${CTX}/jquery.js"></script>
	<script type="text/javascript" src="${CTX}/jsext.js"></script>
	<script type="text/javascript" src="${CTX}/app.js"></script>
	<decora:head/>
</head>
<body>
<div id="wait">Please wait</div>
<div id="main">

	<div id="head" class="cls">
		<div id="title"><a href="${CTX}/index.html"><img src="${CTX}/gfx/uphea-logo.png" alt="uphea logo" title="uphea - the nice way of asking smart questions"/></a></div>
		<div id="punchline">the <b class="c-red">nice</b> way of asking <b class="c-red">smart</b> questions!</div>
		<div id="toppanel">
			<joy:auth auth="false">
				<img src="${CTX}/gfx/login.png" alt="login" style="position:relative;top:3px;margin-right:2px;"/><a href="${CTX}/login.html" title="Sign in!">Sign In</a>

				<div style="border: 2px solid #F29720; width: 150px; position: absolute; float:right; color: #00529B; background-color: #fcefa1; font-family: Tahoma, sans-serif; font-size: 14px; font-weight: bold; padding: 6px; text-align: center; margin-left: 60px; margin-top: 10px;">
					Hey, try to login!
				</div>
			</joy:auth>
			<joy:auth auth="true">
				<img src="${CTX}/gfx/user${AUTH.user.sex}.png" alt="user" style="position:relative;top:3px;"/> <a href="${CTX}/user/index.html">${AUTH.user.screenName}</a>
				| <a href="${CTX}/j_logout" title="Log out until next time!">logout</a>
				<j:if test="${AUTH.user.level.value == 100}">
				| <a href="${CTX}/admin/index.html"><i>administration</i></a>
				</j:if>
			</joy:auth>
		</div>
	</div>

	<div id="share">
		<a href="http://twitter.com/uphea" title="twitter"><img src="${CTX}/gfx/icon_twitter.png" alt="twitter"/></a>
		<a href="http://www.facebook.com/pages/uphea/120860987930062" title="facebook"><img src="${CTX}/gfx/icon_facebook.png" alt="facebook"/></a>
		<a href="${CTX}/uphea.xml" title="rss"><img src="${CTX}/gfx/icon_rss.png" alt="rss"/></a>
		<%@include file="/jspf/fb-like.jspf"%>
	</div>

	<div id="body" class="c24">
	<decora:body/>
	</div>

	<div id="foot">
		contact:&nbsp;<span class="email">info<img src="${CTX}/gfx/email.png" alt="contact" style="position:relative;top:3px;"/>uphea.com</span><br/>
		<b class="c-ora">uphea</b> is open-source Java platform for asking smart questions built on <a href="http://jodd.org" class="c-ora"><b>Jodd framework</b></a>.
	</div>
	<div id="badges" class="cls">
		<a href="http://jodd.org"><img src="${CTX}/gfx/jodd_framework.png" alt="jodd framework" title="jodd framework"/></a>
		<a href="http://www.opensource.org/"><img src="${CTX}/gfx/icon-opensource.png" alt="open-source" title="open source"/></a>
		<a href="http://java.com"><img src="${CTX}/gfx/java.png" alt="java" title="java"/></a>
	</div>
</div>

</body>
</html>