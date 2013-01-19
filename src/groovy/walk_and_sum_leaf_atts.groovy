/**
 * Copying and distribution of this file, with or without modification,
 * are permitted in any medium without royalty provided the copyright
 * notice and this notice are preserved.  This file is offered as-is,
 * without any warranty.
 *
 * @author Robin Bramley (c) 2012
 *
 * Groovy script to walk a Freemind node tree and sum attributes from leaf nodes.
 */

// increment counters
def assessNode(node, map) {
	// get the table model
	def atts = node.getAttributes() 

	def c = atts.rowCount
	for (i=0; i<c; i++) {
		def rowName = atts.getName(i)
		def rowValue = Integer.parseInt(atts.getValue(i))
		map[rowName] += rowValue
	}
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
def counterMap = ["50":0, "90":0]

// run
walkNodeChildren(node, counterMap)

node.attributes.setValue(0,counterMap['50'])
node.attributes.setValue(1,counterMap['90'])

// repaint
c.nodeChanged(node)