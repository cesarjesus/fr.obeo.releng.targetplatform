package fr.obeo.releng.targetplatform.conversion;

import com.google.common.collect.ImmutableSet;
import java.util.Set;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.conversion.impl.AbstractNullSafeConverter;
import org.eclipse.xtext.nodemodel.INode;

/**
 * Copy/paste from Mwe2ValueConverters
 */
@SuppressWarnings("all")
public class FQNConverter extends AbstractNullSafeConverter<String> {
  private final Set<String> allKeywords;
  
  public FQNConverter(final Grammar grammar) {
    this.allKeywords = ImmutableSet.<String>copyOf(GrammarUtil.getAllKeywords(grammar));
  }
  
  @Override
  public String internalToValue(final String string, final INode node) {
    return string.replaceAll("[\\^\\s]", "");
  }
  
  @Override
  public String internalToString(final String value) {
    final String[] segments = value.split("\\.");
    int _length = value.length();
    final StringBuilder builder = new StringBuilder(_length);
    boolean first = true;
    for (final String segment : segments) {
      {
        if ((!first)) {
          builder.append(".");
        }
        boolean _contains = this.allKeywords.contains(segment);
        if (_contains) {
          builder.append("^");
        }
        builder.append(segment);
        first = false;
      }
    }
    return builder.toString();
  }
}
