/*
 * generated by Xtext
 */
package fr.obeo.releng.targetplatform.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import fr.obeo.releng.targetplatform.ui.internal.TargetPlatformActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class TargetPlatformExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return TargetPlatformActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return TargetPlatformActivator.getInstance().getInjector(TargetPlatformActivator.FR_OBEO_RELENG_TARGETPLATFORM_TARGETPLATFORM);
	}
	
}
