/**
 * Copying and distribution of this file, with or without modification,
 * are permitted in any medium without royalty provided the copyright
 * notice and this notice are preserved.  This file is offered as-is,
 * without any warranty.
 *
 * @author Robin Bramley (c) 2012
 *
 * Groovy script to walk a Freemind node tree and count occurrences of leaf terms.
 */

// increment counters
def assessNode(node, map) {
	if(node.toString() == 'Small') { map.small++ }
	else if (node.toString() == 'Medium') { map.medium++ }
	else if (node.toString() == 'Large') { map.large++ }
}

// recurse and process leaf nodes
def walkNodeChildren(node, map) {
	if (node.hasChildren()) {
		def children = node.childrenUnfolded()
		children.each { child ->
			walkNodeChildren(child, map)
		}   
	} else {
		assessNode(node, map)
	}
}

// counters
def counterMap = [small:0, medium:0, large:0]

// run
walkNodeChildren(node, counterMap)

// prepare node text update 
def nT = node.getText() 
def output = "Small: ${counterMap.small}\nMedium: ${counterMap.medium}\nLarge: ${counterMap.large}" 
def crPos = nT.indexOf('\n')

if(crPos == -1) {
	node.setText("${nT}\n${output}") 
} else {
	nLabel = nT.substring(0,crPos)
	node.setText("${nLabel}\n${output}")
}

// repaint
c.nodeChanged(node)