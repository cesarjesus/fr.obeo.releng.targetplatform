package fr.obeo.releng.targetplatform.conversion;

import fr.obeo.releng.targetplatform.conversion.TargetPlatformConverter;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.eclipse.xtext.conversion.impl.AbstractNullSafeConverter;
import org.eclipse.xtext.nodemodel.INode;

@SuppressWarnings("all")
public class VersionRangeConverter extends AbstractNullSafeConverter<String> {
  @Override
  protected String internalToValue(final String string, final INode node) throws ValueConverterException {
    return TargetPlatformConverter.parseVersionRange(string, node);
  }
  
  @Override
  protected String internalToString(final String value) {
    return value;
  }
}
