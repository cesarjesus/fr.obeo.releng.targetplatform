package fr.obeo.releng.targetplatform.ui.editor.autoedit;

import org.eclipse.jface.text.IDocument;
import org.eclipse.xtext.ui.editor.autoedit.AbstractEditStrategyProvider;
import org.eclipse.xtext.ui.editor.autoedit.DefaultAutoEditStrategyProvider;

@SuppressWarnings("all")
public class TargetPlatformAutoEditStrategyProvider extends DefaultAutoEditStrategyProvider {
  @Override
  protected void configureCompoundBracesBlocks(final AbstractEditStrategyProvider.IEditStrategyAcceptor acceptor) {
    acceptor.accept(this.compoundMultiLineTerminals.newInstanceFor("{", "}"), IDocument.DEFAULT_CONTENT_TYPE);
  }
  
  @Override
  protected void configureSquareBrackets(final AbstractEditStrategyProvider.IEditStrategyAcceptor acceptor) {
  }
  
  @Override
  protected void configureParenthesis(final AbstractEditStrategyProvider.IEditStrategyAcceptor acceptor) {
  }
}
