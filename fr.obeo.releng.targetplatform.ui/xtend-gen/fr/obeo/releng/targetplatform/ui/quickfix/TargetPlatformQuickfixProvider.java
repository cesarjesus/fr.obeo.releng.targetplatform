/**
 * generated by Xtext
 */
package fr.obeo.releng.targetplatform.ui.quickfix;

import com.google.common.base.Objects;
import com.google.common.collect.Sets;
import fr.obeo.releng.targetplatform.Location;
import fr.obeo.releng.targetplatform.Option;
import fr.obeo.releng.targetplatform.TargetPlatform;
import fr.obeo.releng.targetplatform.validation.TargetPlatformValidator;
import java.util.Set;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.ui.editor.model.IXtextDocument;
import org.eclipse.xtext.ui.editor.model.edit.IModification;
import org.eclipse.xtext.ui.editor.model.edit.IModificationContext;
import org.eclipse.xtext.ui.editor.model.edit.ISemanticModification;
import org.eclipse.xtext.ui.editor.quickfix.DefaultQuickfixProvider;
import org.eclipse.xtext.ui.editor.quickfix.Fix;
import org.eclipse.xtext.ui.editor.quickfix.IssueResolutionAcceptor;
import org.eclipse.xtext.validation.Issue;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;

/**
 * Custom quickfixes.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#quickfixes
 */
@SuppressWarnings("all")
public class TargetPlatformQuickfixProvider extends DefaultQuickfixProvider {
  @Fix(TargetPlatformValidator.DEPRECATE__STRINGS_ON_IU_VERSION)
  public void removeQuotes(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final IModification _function = new IModification() {
      public void apply(final IModificationContext context) throws Exception {
        final IXtextDocument xtextDocument = context.getXtextDocument();
        Integer _offset = issue.getOffset();
        Integer _length = issue.getLength();
        int _plus = ((_offset).intValue() + (_length).intValue());
        int _minus = (_plus - 1);
        xtextDocument.replace(_minus, 1, "");
        Integer _offset_1 = issue.getOffset();
        xtextDocument.replace((_offset_1).intValue(), 1, "");
      }
    };
    acceptor.accept(issue, "Remove quotes.", "Remove quotes.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__OPTIONS_EQUALS_ALL_LOCATIONS)
  public void equalizeOptions(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        EObject _eContainer = element.eContainer();
        EList<Location> _locations = ((TargetPlatform) _eContainer).getLocations();
        final Procedure1<Location> _function = new Procedure1<Location>() {
          public void apply(final Location _) {
            final Location elemLoc = ((Location) element);
            final EList<Option> locOptions = elemLoc.getOptions();
            boolean _and = false;
            boolean _notEquals = (!Objects.equal(_, element));
            if (!_notEquals) {
              _and = false;
            } else {
              Set<Option> _set = IterableExtensions.<Option>toSet(locOptions);
              EList<Option> _options = _.getOptions();
              Set<Option> _set_1 = IterableExtensions.<Option>toSet(_options);
              Sets.SetView<Option> _symmetricDifference = Sets.<Option>symmetricDifference(_set, _set_1);
              boolean _isEmpty = _symmetricDifference.isEmpty();
              boolean _not = (!_isEmpty);
              _and = _not;
            }
            if (_and) {
              EList<Option> _options_1 = _.getOptions();
              _options_1.clear();
              EList<Option> _options_2 = _.getOptions();
              _options_2.addAll(locOptions);
            }
          }
        };
        IterableExtensions.<Location>forEach(_locations, _function);
      }
    };
    acceptor.accept(issue, 
      "Set all options equals to this one.", "Set all options equals to this one.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__OPTIONS_SELF_EXCLUDING_ALL_ENV_REQUIRED)
  public void removeRemoveRequirements(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        if ((element instanceof TargetPlatform)) {
          EList<Option> _options = ((TargetPlatform) element).getOptions();
          _options.remove(Option.INCLUDE_REQUIRED);
        } else {
          if ((element instanceof Location)) {
            EList<Option> _options_1 = ((Location) element).getOptions();
            _options_1.remove(Option.INCLUDE_REQUIRED);
          }
        }
      }
    };
    acceptor.accept(issue, 
      "Remove \'with requirements\' option.", "Remove \'with requirements\' option.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__OPTIONS_SELF_EXCLUDING_ALL_ENV_REQUIRED)
  public void removeRemoveAllEnvironment(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        if ((element instanceof TargetPlatform)) {
          EList<Option> _options = ((TargetPlatform) element).getOptions();
          _options.remove(Option.INCLUDE_ALL_ENVIRONMENTS);
        } else {
          if ((element instanceof Location)) {
            EList<Option> _options_1 = ((Location) element).getOptions();
            _options_1.remove(Option.INCLUDE_ALL_ENVIRONMENTS);
          }
        }
      }
    };
    acceptor.accept(issue, 
      "Remove \'with allEnvironments\' option.", "Remove \'with allEnvironments\' option.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.DEPRECATE__OPTIONS_ON_LOCATIONS)
  public void moveOptionsToTargetLevel(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        EObject _eContainer = element.eContainer();
        EList<Option> _options = ((TargetPlatform) _eContainer).getOptions();
        _options.clear();
        EList<Option> _options_1 = ((Location) element).getOptions();
        final Procedure1<Option> _function = new Procedure1<Option>() {
          public void apply(final Option it) {
            EObject _eContainer = element.eContainer();
            EList<Option> _options = ((TargetPlatform) _eContainer).getOptions();
            _options.add(it);
          }
        };
        IterableExtensions.<Option>forEach(_options_1, _function);
        EObject _eContainer_1 = element.eContainer();
        EList<Location> _locations = ((TargetPlatform) _eContainer_1).getLocations();
        final Procedure1<Location> _function_1 = new Procedure1<Location>() {
          public void apply(final Location it) {
            EList<Option> _options = it.getOptions();
            _options.clear();
          }
        };
        IterableExtensions.<Location>forEach(_locations, _function_1);
        context.getXtextDocument();
      }
    };
    acceptor.accept(issue, 
      "Move options to the target level and remove all location specific options.", 
      "Move options to the target level and remove all location specific options.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__NO_OPTIONS_ON_LOCATIONS_IF_GLOBAL_OPTIONS)
  public void removeAllLocationSpecificOptions(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        EObject _eContainer = element.eContainer();
        EList<Location> _locations = ((TargetPlatform) _eContainer).getLocations();
        final Procedure1<Location> _function = new Procedure1<Location>() {
          public void apply(final Location it) {
            EList<Option> _options = it.getOptions();
            _options.clear();
          }
        };
        IterableExtensions.<Location>forEach(_locations, _function);
      }
    };
    acceptor.accept(issue, 
      "Remove all location specific options.", 
      "Remove all location specific options.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__LOCATION_CONFLICTUAL_ID)
  public void setOtherLocationWithSameURIToTheSameID(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        final String id = ((Location) element).getID();
        final String uri = ((Location) element).getUri();
        boolean _notEquals = (!Objects.equal(uri, null));
        if (_notEquals) {
          EObject _eContainer = element.eContainer();
          EList<Location> _locations = ((TargetPlatform) _eContainer).getLocations();
          final Function1<Location,Boolean> _function = new Function1<Location,Boolean>() {
            public Boolean apply(final Location it) {
              boolean _and = false;
              boolean _notEquals = (!Objects.equal(uri, null));
              if (!_notEquals) {
                _and = false;
              } else {
                String _uri = it.getUri();
                boolean _equals = uri.equals(_uri);
                _and = _equals;
              }
              return Boolean.valueOf(_and);
            }
          };
          Iterable<Location> _filter = IterableExtensions.<Location>filter(_locations, _function);
          final Procedure1<Location> _function_1 = new Procedure1<Location>() {
            public void apply(final Location it) {
              it.setID(id);
            }
          };
          IterableExtensions.<Location>forEach(_filter, _function_1);
        }
      }
    };
    acceptor.accept(issue, 
      "Set other locations with the same URI to the same ID.", 
      "Set other locations with the same URI to the same ID.", null, _function);
  }
  
  @Fix(TargetPlatformValidator.CHECK__INCLUDED_LOCATION_CONFLICTUAL_ID)
  public void setIDSameValueAsIncludedLocation(final Issue issue, final IssueResolutionAcceptor acceptor) {
    final ISemanticModification _function = new ISemanticModification() {
      public void apply(final EObject element, final IModificationContext context) throws Exception {
        String[] _data = issue.getData();
        final String id = _data[0];
        String[] _data_1 = issue.getData();
        final String uri = _data_1[1];
        EObject _eContainer = element.eContainer();
        EList<Location> _locations = ((TargetPlatform) _eContainer).getLocations();
        final Function1<Location,Boolean> _function = new Function1<Location,Boolean>() {
          public Boolean apply(final Location it) {
            boolean _and = false;
            boolean _notEquals = (!Objects.equal(uri, null));
            if (!_notEquals) {
              _and = false;
            } else {
              String _uri = it.getUri();
              boolean _equals = uri.equals(_uri);
              _and = _equals;
            }
            return Boolean.valueOf(_and);
          }
        };
        Iterable<Location> _filter = IterableExtensions.<Location>filter(_locations, _function);
        final Procedure1<Location> _function_1 = new Procedure1<Location>() {
          public void apply(final Location it) {
            it.setID(id);
          }
        };
        IterableExtensions.<Location>forEach(_filter, _function_1);
      }
    };
    acceptor.accept(issue, 
      "Set the IDs of all locations with the same URI to the same value as included location.", 
      "Set the IDs of all locations with the same URI to the same value as included location.", null, _function);
  }
}
