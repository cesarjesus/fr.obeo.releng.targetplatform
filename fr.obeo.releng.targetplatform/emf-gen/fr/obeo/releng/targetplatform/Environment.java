/**
 */
package fr.obeo.releng.targetplatform;

import java.util.Locale;

import org.eclipse.emf.common.util.EList;

import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Environment</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getEnv <em>Env</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getOperatingSystem <em>Operating System</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getWindowingSystem <em>Windowing System</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getArchitecture <em>Architecture</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getLocalization <em>Localization</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.Environment#getExecutionEnvironment <em>Execution Environment</em>}</li>
 * </ul>
 *
 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment()
 * @model
 * @generated
 */
public interface Environment extends TargetContent {
	/**
	 * Returns the value of the '<em><b>Env</b></em>' attribute list.
	 * The list contents are of type {@link java.lang.String}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Env</em>' attribute list.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_Env()
	 * @model unique="false"
	 * @generated
	 */
	EList<String> getEnv();

	/**
	 * Returns the value of the '<em><b>Operating System</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Operating System</em>' attribute.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_OperatingSystem()
	 * @model unique="false" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	String getOperatingSystem();

	/**
	 * Returns the value of the '<em><b>Windowing System</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Windowing System</em>' attribute.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_WindowingSystem()
	 * @model unique="false" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	String getWindowingSystem();

	/**
	 * Returns the value of the '<em><b>Architecture</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Architecture</em>' attribute.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_Architecture()
	 * @model unique="false" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	String getArchitecture();

	/**
	 * Returns the value of the '<em><b>Localization</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Localization</em>' attribute.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_Localization()
	 * @model unique="false" dataType="fr.obeo.releng.targetplatform.Locale" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	Locale getLocalization();

	/**
	 * Returns the value of the '<em><b>Execution Environment</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Execution Environment</em>' attribute.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getEnvironment_ExecutionEnvironment()
	 * @model unique="false" dataType="fr.obeo.releng.targetplatform.ExecutionEnvironment" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	IExecutionEnvironment getExecutionEnvironment();

} // Environment
