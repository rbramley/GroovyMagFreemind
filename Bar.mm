<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1358265275205" ID="ID_1288165593" MODIFIED="1358265279012" TEXT="Bar">
<node CREATED="1358265282897" ID="ID_1938572480" MODIFIED="1358628548504" POSITION="right" TEXT="User Stories">
<attribute NAME="total_50" VALUE="4"/>
<attribute NAME="total_90" VALUE="9"/>
<attribute NAME="script1" VALUE="/**&#xa; * Copying and distribution of this file, with or without modification,&#xa; * are permitted in any medium without royalty provided the copyright&#xa; * notice and this notice are preserved.  This file is offered as-is,&#xa; * without any warranty.&#xa; *&#xa; * @author Robin Bramley (c) 2012&#xa; *&#xa; * Groovy script to walk a Freemind node tree and sum attributes from leaf nodes.&#xa; */&#xa;&#xa;// increment counters&#xa;def assessNode(node, map) {&#xa;&#x9;// get the table model&#xa;&#x9;def atts = node.getAttributes() &#xa;&#xa;&#x9;def c = atts.rowCount&#xa;&#x9;for (i=0; i&lt;c; i++) {&#xa;&#x9;&#x9;def rowName = atts.getName(i)&#xa;&#x9;&#x9;def rowValue = Integer.parseInt(atts.getValue(i))&#xa;&#x9;&#x9;map[rowName] += rowValue&#xa;&#x9;}&#xa;}&#xa;&#xa;// recurse and process leaf nodes&#xa;def walkNodeChildren(node, map) {&#xa;&#x9;if (node.hasChildren()) {&#xa;&#x9;&#x9;def children = node.childrenUnfolded()&#xa;&#x9;&#x9;children.each { child -&gt;&#xa;&#x9;&#x9;&#x9;walkNodeChildren(child, map)&#xa;&#x9;&#x9;}   &#xa;&#x9;} else {&#xa;&#x9;&#x9;assessNode(node, map)&#xa;&#x9;}&#xa;}&#xa;&#xa;// counters&#xa;def counterMap = [&quot;50&quot;:0, &quot;90&quot;:0]&#xa;&#xa;// run&#xa;walkNodeChildren(node, counterMap)&#xa;&#xa;node.attributes.setValue(0,counterMap[&apos;50&apos;])&#xa;node.attributes.setValue(1,counterMap[&apos;90&apos;])&#xa;&#xa;// repaint&#xa;c.nodeChanged(node)"/>
<node CREATED="1358265417450" ID="ID_744313706" MODIFIED="1358265577186" TEXT="As a user, I want to use attributes">
<attribute NAME="50" VALUE="3"/>
<attribute NAME="90" VALUE="7"/>
</node>
<node CREATED="1358265800785" ID="ID_587762059" MODIFIED="1358265846283" TEXT="As a user, I want to evaluate scripts">
<attribute NAME="50" VALUE="1"/>
<attribute NAME="90" VALUE="2"/>
</node>
</node>
</node>
</map>
