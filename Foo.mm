<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1336127197956" ID="ID_684182568" MODIFIED="1336127289380" TEXT="Foo">
<node CREATED="1335475079203" ID="ID_1282698411" MODIFIED="1358264966817" POSITION="right" TEXT="user stories">
<attribute NAME="script1" VALUE="// increment counters def assessNode(node, map) { &#x9;if(node.toString() == &apos;Small&apos;) { map.small++ } &#x9;else if (node.toString() == &apos;Medium&apos;) { map.medium++ } &#x9;else if (node.toString() == &apos;Large&apos;) { map.large++ } }  // recurse and process leaf nodes def walkNodeChildren(node, map) { &#x9;if (node.hasChildren()) { &#x9;&#x9;def children = node.childrenUnfolded() &#x9;&#x9;children.each { child -&gt; &#x9;&#x9;&#x9;walkNodeChildren(child, map) &#x9;&#x9;}    &#x9;} else { &#x9;&#x9;assessNode(node, map) &#x9;} }  // counters def counterMap = [small:0, medium:0, large:0]  // run walkNodeChildren(node, counterMap)  // prepare node text update  def nT = node.getText()  def output = &quot;Small: ${counterMap.small}\nMedium: ${counterMap.medium}\nLarge: ${counterMap.large}&quot;  def crPos = nT.indexOf(&apos;\n&apos;)  if(crPos == -1) { &#x9;node.setText(&quot;${nT}\n${output}&quot;)  } else { &#x9;nLabel = nT.substring(0,crPos) &#x9;node.setText(&quot;${nLabel}\n${output}&quot;) }  // repaint c.nodeChanged(node)"/>
<node CREATED="1335475088116" ID="ID_1942129687" MODIFIED="1336127269988" TEXT="As a user, I want to foo, so that I can bar">
<node CREATED="1336127392966" ID="ID_1756003665" MODIFIED="1336127395129" TEXT="Small"/>
</node>
<node CREATED="1335476337522" ID="ID_1454768904" MODIFIED="1336127276110" TEXT="As a user, I want to drink java">
<node CREATED="1336127397645" ID="ID_1836053143" MODIFIED="1336127403921" TEXT="Small"/>
</node>
<node CREATED="1335476610457" ID="ID_1657369615" MODIFIED="1336127281792" TEXT="As the system, I need to maintain an audit trail">
<node CREATED="1336127404765" ID="ID_1897823209" MODIFIED="1336127407825" TEXT="Large"/>
</node>
</node>
</node>
</map>
