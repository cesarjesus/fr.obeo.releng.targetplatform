/*
* generated by Xtext
*/
grammar InternalTargetPlatform;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package fr.obeo.releng.targetplatform.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package fr.obeo.releng.targetplatform.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import fr.obeo.releng.targetplatform.services.TargetPlatformGrammarAccess;

}

@parser::members {

 	private TargetPlatformGrammarAccess grammarAccess;
 	
    public InternalTargetPlatformParser(TokenStream input, TargetPlatformGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "TargetPlatform";	
   	}
   	
   	@Override
   	protected TargetPlatformGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleTargetPlatform
entryRuleTargetPlatform returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTargetPlatformRule()); }
	 iv_ruleTargetPlatform=ruleTargetPlatform 
	 { $current=$iv_ruleTargetPlatform.current; } 
	 EOF 
;

// Rule TargetPlatform
ruleTargetPlatform returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='target' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTargetPlatformAccess().getTargetKeyword_0());
    }
(
(
		lv_name_1_0=RULE_STRING
		{
			newLeafNode(lv_name_1_0, grammarAccess.getTargetPlatformAccess().getNameSTRINGTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTargetPlatformRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"STRING");
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getTargetPlatformAccess().getContentsTargetContentParserRuleCall_2_0()); 
	    }
		lv_contents_2_0=ruleTargetContent		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getTargetPlatformRule());
	        }
       		add(
       			$current, 
       			"contents",
        		lv_contents_2_0, 
        		"TargetContent");
	        afterParserOrEnumRuleCall();
	    }

)
)*)?
;





// Entry rule entryRuleTargetContent
entryRuleTargetContent returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTargetContentRule()); }
	 iv_ruleTargetContent=ruleTargetContent 
	 { $current=$iv_ruleTargetContent.current; } 
	 EOF 
;

// Rule TargetContent
ruleTargetContent returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getTargetContentAccess().getOptionsParserRuleCall_0()); 
    }
    this_Options_0=ruleOptions
    { 
        $current = $this_Options_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getTargetContentAccess().getEnvironmentParserRuleCall_1()); 
    }
    this_Environment_1=ruleEnvironment
    { 
        $current = $this_Environment_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getTargetContentAccess().getIncludeDeclarationParserRuleCall_2()); 
    }
    this_IncludeDeclaration_2=ruleIncludeDeclaration
    { 
        $current = $this_IncludeDeclaration_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getTargetContentAccess().getLocationParserRuleCall_3()); 
    }
    this_Location_3=ruleLocation
    { 
        $current = $this_Location_3.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleOptions
entryRuleOptions returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOptionsRule()); }
	 iv_ruleOptions=ruleOptions 
	 { $current=$iv_ruleOptions.current; } 
	 EOF 
;

// Rule Options
ruleOptions returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='with' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getOptionsAccess().getWithKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_1_0()); 
	    }
		lv_options_1_0=ruleOption		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOptionsRule());
	        }
       		add(
       			$current, 
       			"options",
        		lv_options_1_0, 
        		"Option");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getOptionsAccess().getCommaKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_2_1_0()); 
	    }
		lv_options_3_0=ruleOption		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOptionsRule());
	        }
       		add(
       			$current, 
       			"options",
        		lv_options_3_0, 
        		"Option");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRuleEnvironment
entryRuleEnvironment returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEnvironmentRule()); }
	 iv_ruleEnvironment=ruleEnvironment 
	 { $current=$iv_ruleEnvironment.current; } 
	 EOF 
;

// Rule Environment
ruleEnvironment returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 0);
	 				}
					({true}?=>(	otherlv_1='operatingSystem' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getEnvironmentAccess().getOperatingSystemKeyword_0_0());
    }
(
(
		lv_operatingSystem_2_0=RULE_ID
		{
			newLeafNode(lv_operatingSystem_2_0, grammarAccess.getEnvironmentAccess().getOperatingSystemIDTerminalRuleCall_0_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnvironmentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"operatingSystem",
        		lv_operatingSystem_2_0, 
        		"ID");
	    }

)
)))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 1);
	 				}
					({true}?=>(	otherlv_3='windowingSystem' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getEnvironmentAccess().getWindowingSystemKeyword_1_0());
    }
(
(
		lv_windowingSystem_4_0=RULE_ID
		{
			newLeafNode(lv_windowingSystem_4_0, grammarAccess.getEnvironmentAccess().getWindowingSystemIDTerminalRuleCall_1_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnvironmentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"windowingSystem",
        		lv_windowingSystem_4_0, 
        		"ID");
	    }

)
)))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 2);
	 				}
					({true}?=>(	otherlv_5='architecture' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getEnvironmentAccess().getArchitectureKeyword_2_0());
    }
(
(
		lv_architecture_6_0=RULE_ID
		{
			newLeafNode(lv_architecture_6_0, grammarAccess.getEnvironmentAccess().getArchitectureIDTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnvironmentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"architecture",
        		lv_architecture_6_0, 
        		"ID");
	    }

)
)))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 3)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 3);
	 				}
					({true}?=>(	otherlv_7='localization' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getEnvironmentAccess().getLocalizationKeyword_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getEnvironmentAccess().getLocalizationLocaleParserRuleCall_3_1_0()); 
	    }
		lv_localization_8_0=ruleLocale		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEnvironmentRule());
	        }
       		set(
       			$current, 
       			"localization",
        		lv_localization_8_0, 
        		"Locale");
	        afterParserOrEnumRuleCall();
	    }

)
)))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 4)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getEnvironmentAccess().getUnorderedGroup(), 4);
	 				}
					({true}?=>(	otherlv_9='executionEnvironment' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getEnvironmentAccess().getExecutionEnvironmentKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getEnvironmentAccess().getExecutionEnvironmentExecutionEnvironmentParserRuleCall_4_1_0()); 
	    }
		lv_executionEnvironment_10_0=ruleExecutionEnvironment		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEnvironmentRule());
	        }
       		set(
       			$current, 
       			"executionEnvironment",
        		lv_executionEnvironment_10_0, 
        		"ExecutionEnvironment");
	        afterParserOrEnumRuleCall();
	    }

)
)))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	 				}
 				)
			)  

		)+
	  	{getUnorderedGroupHelper().canLeave(grammarAccess.getEnvironmentAccess().getUnorderedGroup())}?	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getEnvironmentAccess().getUnorderedGroup());
	}

)
;





// Entry rule entryRuleIncludeDeclaration
entryRuleIncludeDeclaration returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getIncludeDeclarationRule()); }
	 iv_ruleIncludeDeclaration=ruleIncludeDeclaration 
	 { $current=$iv_ruleIncludeDeclaration.current; } 
	 EOF 
;

// Rule IncludeDeclaration
ruleIncludeDeclaration returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='include' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getIncludeDeclarationAccess().getIncludeKeyword_0());
    }
(
(
		lv_importURI_1_0=RULE_STRING
		{
			newLeafNode(lv_importURI_1_0, grammarAccess.getIncludeDeclarationAccess().getImportURISTRINGTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getIncludeDeclarationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"importURI",
        		lv_importURI_1_0, 
        		"STRING");
	    }

)
))
;





// Entry rule entryRuleLocation
entryRuleLocation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getLocationRule()); }
	 iv_ruleLocation=ruleLocation 
	 { $current=$iv_ruleLocation.current; } 
	 EOF 
;

// Rule Location
ruleLocation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='location' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getLocationAccess().getLocationKeyword_0());
    }
(

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 0);
	 				}
					({true}?=>(
(
		lv_ID_2_0=RULE_ID
		{
			newLeafNode(lv_ID_2_0, grammarAccess.getLocationAccess().getIDIDTerminalRuleCall_1_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLocationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"ID",
        		lv_ID_2_0, 
        		"ID");
	    }

)
))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 1);
	 				}
					({true}?=>(
(
		lv_uri_3_0=RULE_STRING
		{
			newLeafNode(lv_uri_3_0, grammarAccess.getLocationAccess().getUriSTRINGTerminalRuleCall_1_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getLocationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"uri",
        		lv_uri_3_0, 
        		"STRING");
	    }

)
))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	 				}
 				)
			)  

		)+
	  	{getUnorderedGroupHelper().canLeave(grammarAccess.getLocationAccess().getUnorderedGroup_1())}?	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	}

)(	otherlv_4='{' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getLocationAccess().getLeftCurlyBracketKeyword_2_0());
    }
(	otherlv_5='with' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getLocationAccess().getWithKeyword_2_1_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_1_0()); 
	    }
		lv_options_6_0=ruleOption		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLocationRule());
	        }
       		add(
       			$current, 
       			"options",
        		lv_options_6_0, 
        		"Option");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_7=',' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getLocationAccess().getCommaKeyword_2_1_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_2_1_0()); 
	    }
		lv_options_8_0=ruleOption		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLocationRule());
	        }
       		add(
       			$current, 
       			"options",
        		lv_options_8_0, 
        		"Option");
	        afterParserOrEnumRuleCall();
	    }

)
))*)?(
(
		{ 
	        newCompositeNode(grammarAccess.getLocationAccess().getIusIUParserRuleCall_2_2_0()); 
	    }
		lv_ius_9_0=ruleIU		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLocationRule());
	        }
       		add(
       			$current, 
       			"ius",
        		lv_ius_9_0, 
        		"IU");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getLocationAccess().getRightCurlyBracketKeyword_2_3());
    }
)?)
;





// Entry rule entryRuleIU
entryRuleIU returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getIURule()); }
	 iv_ruleIU=ruleIU 
	 { $current=$iv_ruleIU.current; } 
	 EOF 
;

// Rule IU
ruleIU returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getIUAccess().getIDQualifiedNameParserRuleCall_0_0()); 
	    }
		lv_ID_0_0=ruleQualifiedName		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getIURule());
	        }
       		set(
       			$current, 
       			"ID",
        		lv_ID_0_0, 
        		"QualifiedName");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_1=';' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getIUAccess().getSemicolonKeyword_1_0());
    }
	otherlv_2='version' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getIUAccess().getVersionKeyword_1_1());
    }
	otherlv_3='=' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getIUAccess().getEqualsSignKeyword_1_2());
    }
((
(
		{ 
	        newCompositeNode(grammarAccess.getIUAccess().getVersionVersionRangeParserRuleCall_1_3_0_0()); 
	    }
		lv_version_4_0=ruleVersionRange		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getIURule());
	        }
       		set(
       			$current, 
       			"version",
        		lv_version_4_0, 
        		"VersionRange");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |(
(
		lv_version_5_0=RULE_STRING
		{
			newLeafNode(lv_version_5_0, grammarAccess.getIUAccess().getVersionSTRINGTerminalRuleCall_1_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getIURule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"version",
        		lv_version_5_0, 
        		"STRING");
	    }

)
)))?)
;





// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
	}
	:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); } 
	 iv_ruleQualifiedName=ruleQualifiedName 
	 { $current=$iv_ruleQualifiedName.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); 
    }
(((
	'.' 
)=>
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); 
    }
)    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); 
    }
)*)
    ;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleVersion
entryRuleVersion returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
	}
	:
	{ newCompositeNode(grammarAccess.getVersionRule()); } 
	 iv_ruleVersion=ruleVersion 
	 { $current=$iv_ruleVersion.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Version
ruleVersion returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
    }
    @after { leaveRule(); }:
(    this_INT_0=RULE_INT    {
		$current.merge(this_INT_0);
    }

    { 
    newLeafNode(this_INT_0, grammarAccess.getVersionAccess().getINTTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getFullStopKeyword_1_0()); 
    }
    this_INT_2=RULE_INT    {
		$current.merge(this_INT_2);
    }

    { 
    newLeafNode(this_INT_2, grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_1()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getFullStopKeyword_1_2_0()); 
    }
    this_INT_4=RULE_INT    {
		$current.merge(this_INT_4);
    }

    { 
    newLeafNode(this_INT_4, grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_1()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getFullStopKeyword_1_2_2_0()); 
    }
(    this_ID_6=RULE_ID    {
		$current.merge(this_ID_6);
    }

    { 
    newLeafNode(this_ID_6, grammarAccess.getVersionAccess().getIDTerminalRuleCall_1_2_2_1_0()); 
    }

    |    this_INT_7=RULE_INT    {
		$current.merge(this_INT_7);
    }

    { 
    newLeafNode(this_INT_7, grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_2_1_1()); 
    }
))?)?)?)
    ;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleVersionRange
entryRuleVersionRange returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
	}
	:
	{ newCompositeNode(grammarAccess.getVersionRangeRule()); } 
	 iv_ruleVersionRange=ruleVersionRange 
	 { $current=$iv_ruleVersionRange.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule VersionRange
ruleVersionRange returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
    }
    @after { leaveRule(); }:
(((
	kw='(' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getLeftParenthesisKeyword_0_0_0()); 
    }

    |
	kw='[' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getLeftSquareBracketKeyword_0_0_1()); 
    }
)
    { 
        newCompositeNode(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_1()); 
    }
    this_Version_2=ruleVersion    {
		$current.merge(this_Version_2);
    }

    { 
        afterParserOrEnumRuleCall();
    }

	kw=',' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getCommaKeyword_0_2()); 
    }

    { 
        newCompositeNode(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_3()); 
    }
    this_Version_4=ruleVersion    {
		$current.merge(this_Version_4);
    }

    { 
        afterParserOrEnumRuleCall();
    }
(
	kw=')' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getRightParenthesisKeyword_0_4_0()); 
    }

    |
	kw=']' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getRightSquareBracketKeyword_0_4_1()); 
    }
))
    |
    { 
        newCompositeNode(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_1()); 
    }
    this_Version_7=ruleVersion    {
		$current.merge(this_Version_7);
    }

    { 
        afterParserOrEnumRuleCall();
    }

    |
	kw='lazy' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionRangeAccess().getLazyKeyword_2()); 
    }
)
    ;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleLocale
entryRuleLocale returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
	}
	:
	{ newCompositeNode(grammarAccess.getLocaleRule()); } 
	 iv_ruleLocale=ruleLocale 
	 { $current=$iv_ruleLocale.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Locale
ruleLocale returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
    }
    @after { leaveRule(); }:
    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getLocaleAccess().getIDTerminalRuleCall()); 
    }

    ;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleExecutionEnvironment
entryRuleExecutionEnvironment returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
	}
	:
	{ newCompositeNode(grammarAccess.getExecutionEnvironmentRule()); } 
	 iv_ruleExecutionEnvironment=ruleExecutionEnvironment 
	 { $current=$iv_ruleExecutionEnvironment.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule ExecutionEnvironment
ruleExecutionEnvironment returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
    }
    @after { leaveRule(); }:
    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getExecutionEnvironmentAccess().getIDTerminalRuleCall()); 
    }

    ;
finally {
	myHiddenTokenState.restore();
}





// Rule Option
ruleOption returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='requirements' 
	{
        $current = grammarAccess.getOptionAccess().getINCLUDE_REQUIREDEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getOptionAccess().getINCLUDE_REQUIREDEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='allEnvironments' 
	{
        $current = grammarAccess.getOptionAccess().getINCLUDE_ALL_ENVIRONMENTSEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getOptionAccess().getINCLUDE_ALL_ENVIRONMENTSEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='source' 
	{
        $current = grammarAccess.getOptionAccess().getINCLUDE_SOURCEEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getOptionAccess().getINCLUDE_SOURCEEnumLiteralDeclaration_2()); 
    }
)
    |(	enumLiteral_3='configurePhase' 
	{
        $current = grammarAccess.getOptionAccess().getINCLUDE_CONFIGURE_PHASEEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_3, grammarAccess.getOptionAccess().getINCLUDE_CONFIGURE_PHASEEnumLiteralDeclaration_3()); 
    }
));



RULE_INT : ('0'..'9')+;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_'|'-'|'0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


