/**
 */
package fr.obeo.releng.targetplatform;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Target Platform</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getName <em>Name</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getContents <em>Contents</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getIncludes <em>Includes</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getOptions <em>Options</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getLocations <em>Locations</em>}</li>
 *   <li>{@link fr.obeo.releng.targetplatform.TargetPlatform#getEnvironment <em>Environment</em>}</li>
 * </ul>
 *
 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform()
 * @model
 * @generated
 */
public interface TargetPlatform extends EObject {
	/**
	 * Returns the value of the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name</em>' attribute.
	 * @see #setName(String)
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Name()
	 * @model unique="false"
	 * @generated
	 */
	String getName();

	/**
	 * Sets the value of the '{@link fr.obeo.releng.targetplatform.TargetPlatform#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 * @generated
	 */
	void setName(String value);

	/**
	 * Returns the value of the '<em><b>Contents</b></em>' containment reference list.
	 * The list contents are of type {@link fr.obeo.releng.targetplatform.TargetContent}.
	 * It is bidirectional and its opposite is '{@link fr.obeo.releng.targetplatform.TargetContent#getTargetPlatform <em>Target Platform</em>}'.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Contents</em>' containment reference list.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Contents()
	 * @see fr.obeo.releng.targetplatform.TargetContent#getTargetPlatform
	 * @model opposite="targetPlatform" containment="true"
	 * @generated
	 */
	EList<TargetContent> getContents();

	/**
	 * Returns the value of the '<em><b>Includes</b></em>' reference list.
	 * The list contents are of type {@link fr.obeo.releng.targetplatform.IncludeDeclaration}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Includes</em>' reference list.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Includes()
	 * @model transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	EList<IncludeDeclaration> getIncludes();

	/**
	 * Returns the value of the '<em><b>Options</b></em>' attribute list.
	 * The list contents are of type {@link fr.obeo.releng.targetplatform.Option}.
	 * The literals are from the enumeration {@link fr.obeo.releng.targetplatform.Option}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Options</em>' attribute list.
	 * @see fr.obeo.releng.targetplatform.Option
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Options()
	 * @model unique="false" transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	EList<Option> getOptions();

	/**
	 * Returns the value of the '<em><b>Locations</b></em>' reference list.
	 * The list contents are of type {@link fr.obeo.releng.targetplatform.Location}.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Locations</em>' reference list.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Locations()
	 * @model transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	EList<Location> getLocations();

	/**
	 * Returns the value of the '<em><b>Environment</b></em>' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Environment</em>' reference.
	 * @see fr.obeo.releng.targetplatform.TargetPlatformPackage#getTargetPlatform_Environment()
	 * @model transient="true" changeable="false" volatile="true" derived="true"
	 * @generated
	 */
	Environment getEnvironment();

} // TargetPlatform
