package fr.obeo.releng.targetplatform.ui.editor.syntaxcoloring;

import java.util.List;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.nodemodel.util.NodeModelUtils;
import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultSemanticHighlightingCalculator;
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightedPositionAcceptor;

import fr.obeo.releng.targetplatform.Environment;
import fr.obeo.releng.targetplatform.IU;
import fr.obeo.releng.targetplatform.TargetPlatformPackage;

public class TargetPlatformSemanticHighlightingCalculator extends DefaultSemanticHighlightingCalculator {

	@Override
	protected boolean highlightElement(EObject object, IHighlightedPositionAcceptor acceptor) {
		if (object instanceof IU) {
			highlightFeature(acceptor, object, TargetPlatformPackage.Literals.IU__VERSION, TargetPlatformHighlightingConfiguration.VERSION_RANGE_ID);
		} else if (object instanceof Environment) {
			highlightFeature(acceptor, object, TargetPlatformPackage.Literals.ENVIRONMENT__ENV, TargetPlatformHighlightingConfiguration.OPTION_ID);
		}
		return false;
	}
	
	protected void highlightFeature(IHighlightedPositionAcceptor acceptor, EObject object, EStructuralFeature feature,
			String... styleIds) {
		List<INode> children = NodeModelUtils.findNodesForFeature(object, feature);
		for(INode child: children)
			highlightNode(acceptor, child, styleIds);
	}
}
