<%--
/*
 * $Id$
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="partialChunkHeader.jsp"%>
<ul>
<s:iterator value="category.children">
    <li>
        <s:if test="children.size() > 0">
            <sx:a href="toggle.action?catId=%{id}">+</sx:a>
        </s:if>
        <s:property value="name"/>
    </li>
    <s:if test="toggle">
        <s:set name="display" value="'none'"/>
    </s:if>
    <s:else>
        <s:set name="display" value="''"/>
    </s:else>                                                                                     ›

    <sx:div id="children_%{id}"
            cssStyle="display: %{display}"
            href="getCategory.action?catId=%{id}"
            refreshListenTopic="children_%{id}"/>
</s:iterator>
</ul>