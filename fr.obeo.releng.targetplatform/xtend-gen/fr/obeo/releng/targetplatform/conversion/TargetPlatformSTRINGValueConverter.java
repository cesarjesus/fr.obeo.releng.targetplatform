package fr.obeo.releng.targetplatform.conversion;

import com.google.common.base.Objects;
import fr.obeo.releng.targetplatform.conversion.TargetPlatformConverter;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.conversion.impl.STRINGValueConverter;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.util.Strings;

@SuppressWarnings("all")
public class TargetPlatformSTRINGValueConverter extends STRINGValueConverter {
  @Override
  public String toValue(final String string, final INode node) {
    boolean _equals = Objects.equal(string, null);
    if (_equals) {
      return null;
    }
    EObject _grammarElement = node.getGrammarElement();
    final RuleCall ge = ((RuleCall) _grammarElement);
    EObject _eContainer = ge.eContainer();
    final Assignment container = ((Assignment) _eContainer);
    int _length = string.length();
    int _minus = (_length - 1);
    final String value = Strings.convertFromJavaString(string.substring(1, _minus), true);
    if ((((!Objects.equal(value, null)) && (!Objects.equal(container, null))) && "version".equals(container.getFeature()))) {
      return TargetPlatformConverter.parseVersionRange(value, node);
    } else {
      return value;
    }
  }
}
