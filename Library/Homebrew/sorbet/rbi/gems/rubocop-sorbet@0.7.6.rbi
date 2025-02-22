# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rubocop-sorbet` gem.
# Please instead update this file by running `bin/tapioca gem rubocop-sorbet`.

module RuboCop; end
module RuboCop::Cop; end
RuboCop::Cop::IgnoredMethods = RuboCop::Cop::AllowedMethods
RuboCop::Cop::IgnoredPattern = RuboCop::Cop::AllowedPattern
module RuboCop::Cop::Sorbet; end

class RuboCop::Cop::Sorbet::AllowIncompatibleOverride < ::RuboCop::Cop::Base
  def on_block(node); end
  def on_numblock(node); end
  def on_send(node); end
  def override?(param0 = T.unsafe(nil)); end
  def sig?(param0); end
  def sig_dot_override?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Sorbet::AllowIncompatibleOverride::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::AllowIncompatibleOverride::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::BindingConstantWithoutTypeAlias < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_casgn(node); end
  def requires_type_alias?(param0 = T.unsafe(nil)); end
  def type_alias_with_block?(param0 = T.unsafe(nil)); end
  def type_alias_without_block(param0 = T.unsafe(nil)); end

  private

  def send_leaf(node); end
end

RuboCop::Cop::Sorbet::BindingConstantWithoutTypeAlias::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::BindingConstantWithoutTypeAlias::WITHOUT_BLOCK_MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::BuggyObsoleteStrictMemoization < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::MatchRange
  include ::RuboCop::Cop::Alignment
  include ::RuboCop::Cop::LineLengthHelp
  include ::RuboCop::Cop::Sorbet::TargetSorbetVersion
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::Sorbet::TargetSorbetVersion::ClassMethods

  def buggy_legacy_memoization_pattern?(param0 = T.unsafe(nil)); end
  def on_begin(node); end
  def relevant_file?(file); end
end

RuboCop::Cop::Sorbet::BuggyObsoleteStrictMemoization::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::CallbackConditionalsBinding < ::RuboCop::Cop::Cop
  def autocorrect(node); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::CallbackConditionalsBinding::CALLBACKS = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::CheckedTrueInSignature < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::Sorbet::SignatureHelp

  def offending_node(param0); end
  def on_signature(node); end
end

RuboCop::Cop::Sorbet::CheckedTrueInSignature::MESSAGE = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ConstantsFromStrings < ::RuboCop::Cop::Cop
  def constant_from_string?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

class RuboCop::Cop::Sorbet::EmptyLineAfterSig < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::Sorbet::SignatureHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_signature(sig); end
  def sig_or_signable_method_definition?(param0 = T.unsafe(nil)); end

  private

  def lines_between(node1, node2, buffer: T.unsafe(nil)); end
  def next_sibling(node); end
end

RuboCop::Cop::Sorbet::EmptyLineAfterSig::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::EnforceSigilOrder < ::RuboCop::Cop::Sorbet::ValidSigil
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def check_magic_comments_order(tokens); end
  def extract_magic_comments(processed_source); end
end

RuboCop::Cop::Sorbet::EnforceSigilOrder::CODING_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::FROZEN_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::INDENT_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::MAGIC_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::EnforceSigilOrder::PREFERRED_ORDER = T.let(T.unsafe(nil), Hash)

class RuboCop::Cop::Sorbet::EnforceSignatures < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::Sorbet::SignatureHelp

  def initialize(config = T.unsafe(nil), options = T.unsafe(nil)); end

  def accessor?(param0 = T.unsafe(nil)); end
  def autocorrect(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
  def on_signature(node); end
  def scope(node); end

  private

  def check_node(node); end
  def param_type_placeholder; end
  def return_type_placeholder; end
end

class RuboCop::Cop::Sorbet::EnforceSignatures::SigSuggestion
  def initialize(indent, param_placeholder, return_placeholder); end

  def params; end
  def params=(_arg0); end
  def returns; end
  def returns=(_arg0); end
  def to_autocorrect; end

  private

  def generate_params; end
  def generate_return; end
end

class RuboCop::Cop::Sorbet::EnforceSingleSigil < ::RuboCop::Cop::Sorbet::ValidSigil
  include ::RuboCop::Cop::RangeHelp

  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def extract_all_sigils(processed_source); end
end

class RuboCop::Cop::Sorbet::FalseSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def extend_t_sig_or_helpers?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidExtendTSigHelpersInShims::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidIncludeConstLiteral < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def dynamic_inclusion?(param0 = T.unsafe(nil)); end
  def on_send(node); end

  private

  def neither_const_nor_self?(node); end
  def within_onymous_module?(node); end
end

RuboCop::Cop::Sorbet::ForbidIncludeConstLiteral::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidIncludeConstLiteral::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidRBIOutsideOfAllowedPaths < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::RangeHelp

  def investigate(processed_source); end

  private

  def allowed_paths; end
end

class RuboCop::Cop::Sorbet::ForbidSuperclassConstLiteral < ::RuboCop::Cop::Base
  def dynamic_superclass?(param0 = T.unsafe(nil)); end
  def on_class(node); end
end

RuboCop::Cop::Sorbet::ForbidSuperclassConstLiteral::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ForbidTStruct < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::Alignment
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::CommentsHelp
  extend ::RuboCop::Cop::AutoCorrector

  def on_class(node); end
  def on_send(node); end
  def t_props?(param0 = T.unsafe(nil)); end
  def t_struct?(param0 = T.unsafe(nil)); end

  private

  def initialize_method(indent, props); end
  def previous_line_blank?(node); end
end

RuboCop::Cop::Sorbet::ForbidTStruct::MSG_PROPS = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidTStruct::MSG_STRUCT = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ForbidTStruct::Property
  def initialize(node, kind, name, type, default:, factory:); end

  def attr_accessor; end
  def attr_sig; end
  def default; end
  def factory; end
  def initialize_assign; end
  def initialize_param; end
  def initialize_sig_param; end
  def kind; end
  def name; end
  def nilable?; end
  def node; end
  def type; end
end

RuboCop::Cop::Sorbet::ForbidTStruct::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidTStruct::TStructWalker
  include ::RuboCop::AST::Traversal
  extend ::RuboCop::AST::NodePattern::Macros

  def initialize; end

  def extend_t_sig?(param0 = T.unsafe(nil)); end
  def has_extend_t_sig; end
  def on_send(node); end
  def props; end
  def t_struct_prop?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::ForbidTUnsafe < ::RuboCop::Cop::Base
  def on_send(node); end
  def t_unsafe?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Sorbet::ForbidTUnsafe::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidTUnsafe::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidTUntyped < ::RuboCop::Cop::Base
  def on_send(node); end
  def t_untyped?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Sorbet::ForbidTUntyped::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ForbidTUntyped::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::ForbidTypeAliasedShapes < ::RuboCop::Cop::Base
  def on_block(node); end
  def on_numblock(node); end
  def shape_type_alias?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Sorbet::ForbidTypeAliasedShapes::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ForbidUntypedStructProps < ::RuboCop::Cop::Base
  def on_class(node); end
  def subclass_of_t_struct?(param0 = T.unsafe(nil)); end
  def t_nilable_untyped(param0 = T.unsafe(nil)); end
  def t_struct(param0 = T.unsafe(nil)); end
  def t_untyped(param0 = T.unsafe(nil)); end
  def untyped_props(param0); end
end

RuboCop::Cop::Sorbet::ForbidUntypedStructProps::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::HasSigil < ::RuboCop::Cop::Sorbet::ValidSigil
  def require_sigil_on_all_files?; end
end

class RuboCop::Cop::Sorbet::IgnoreSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::ImplicitConversionMethod < ::RuboCop::Cop::Base
  def on_alias(node); end
  def on_def(node); end
  def on_defs(node); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::ImplicitConversionMethod::IMPLICIT_CONVERSION_METHODS = T.let(T.unsafe(nil), Array)
RuboCop::Cop::Sorbet::ImplicitConversionMethod::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::ImplicitConversionMethod::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::KeywordArgumentOrdering < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::Sorbet::SignatureHelp

  def on_signature(node); end

  private

  def check_order_for_kwoptargs(parameters); end
end

module RuboCop::Cop::Sorbet::MutableConstantSorbetAwareBehaviour
  def on_assignment(value); end

  class << self
    def prepended(base); end
  end
end

class RuboCop::Cop::Sorbet::ObsoleteStrictMemoization < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  include ::RuboCop::Cop::MatchRange
  include ::RuboCop::Cop::Alignment
  include ::RuboCop::Cop::LineLengthHelp
  include ::RuboCop::Cop::Sorbet::TargetSorbetVersion
  extend ::RuboCop::Cop::AutoCorrector
  extend ::RuboCop::Cop::Sorbet::TargetSorbetVersion::ClassMethods

  def legacy_memoization_pattern?(param0 = T.unsafe(nil)); end
  def on_begin(node); end
  def relevant_file?(file); end
end

RuboCop::Cop::Sorbet::ObsoleteStrictMemoization::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::OneAncestorPerLine < ::RuboCop::Cop::Cop
  def abstract?(param0); end
  def autocorrect(node); end
  def more_than_one_ancestor(param0 = T.unsafe(nil)); end
  def on_class(node); end
  def on_module(node); end
  def requires_ancestors(param0); end

  private

  def new_ra_line(indent_count); end
  def process_node(node); end
end

RuboCop::Cop::Sorbet::OneAncestorPerLine::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::RedundantExtendTSig < ::RuboCop::Cop::Base
  include ::RuboCop::Cop::RangeHelp
  extend ::RuboCop::Cop::AutoCorrector

  def extend_t_sig?(param0 = T.unsafe(nil)); end
  def on_send(node); end
end

RuboCop::Cop::Sorbet::RedundantExtendTSig::MSG = T.let(T.unsafe(nil), String)
RuboCop::Cop::Sorbet::RedundantExtendTSig::RESTRICT_ON_SEND = T.let(T.unsafe(nil), Array)

class RuboCop::Cop::Sorbet::SignatureBuildOrder < ::RuboCop::Cop::Cop
  include ::RuboCop::Cop::Sorbet::SignatureHelp

  def autocorrect(node); end
  def on_signature(node); end
  def root_call(param0); end

  private

  def call_chain(sig_child_node); end
  def can_autocorrect?; end
  def node_reparsed_with_modern_features(node); end
end

class RuboCop::Cop::Sorbet::SignatureBuildOrder::ModernBuilder < ::RuboCop::AST::Builder; end
RuboCop::Cop::Sorbet::SignatureBuildOrder::ORDER = T.let(T.unsafe(nil), Hash)

module RuboCop::Cop::Sorbet::SignatureHelp
  extend ::RuboCop::AST::NodePattern::Macros

  def on_block(node); end
  def on_numblock(node); end
  def on_signature(_node); end
  def signature?(param0 = T.unsafe(nil)); end
  def with_runtime?(param0 = T.unsafe(nil)); end
  def without_runtime?(param0 = T.unsafe(nil)); end
end

class RuboCop::Cop::Sorbet::SingleLineRbiClassModuleDefinitions < ::RuboCop::Cop::Base
  extend ::RuboCop::Cop::AutoCorrector

  def on_class(node); end
  def on_module(node); end

  private

  def convert_newlines_to_semicolons(source); end
end

RuboCop::Cop::Sorbet::SingleLineRbiClassModuleDefinitions::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::StrictSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::StrongSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

module RuboCop::Cop::Sorbet::TargetSorbetVersion
  mixes_in_class_methods ::RuboCop::Cop::Sorbet::TargetSorbetVersion::ClassMethods

  def enabled_for_sorbet_static_version?; end
  def read_sorbet_static_version_from_bundler_lock_file; end
  def sorbet_enabled?; end
  def target_sorbet_static_version_from_bundler_lock_file; end

  class << self
    def included(target); end
  end
end

module RuboCop::Cop::Sorbet::TargetSorbetVersion::ClassMethods
  def minimum_target_sorbet_static_version(version); end
  def supports_target_sorbet_static_version?(version); end
end

class RuboCop::Cop::Sorbet::TrueSigil < ::RuboCop::Cop::Sorbet::HasSigil
  def minimum_strictness; end
end

class RuboCop::Cop::Sorbet::TypeAliasName < ::RuboCop::Cop::Base
  def on_casgn(node); end
  def underscored_type_alias?(param0 = T.unsafe(nil)); end
end

RuboCop::Cop::Sorbet::TypeAliasName::MSG = T.let(T.unsafe(nil), String)

class RuboCop::Cop::Sorbet::ValidSigil < ::RuboCop::Cop::Cop
  def autocorrect(_node); end
  def investigate(processed_source); end

  protected

  def check_sigil_present(sigil); end
  def check_strictness_level(sigil, strictness); end
  def check_strictness_not_empty(sigil, strictness); end
  def check_strictness_valid(sigil, strictness); end
  def exact_strictness; end
  def extract_sigil(processed_source); end
  def extract_strictness(sigil); end
  def minimum_strictness; end
  def require_sigil_on_all_files?; end
  def suggested_strictness; end
  def suggested_strictness_level; end
end

RuboCop::Cop::Sorbet::ValidSigil::SIGIL_REGEX = T.let(T.unsafe(nil), Regexp)
RuboCop::Cop::Sorbet::ValidSigil::STRICTNESS_LEVELS = T.let(T.unsafe(nil), Array)
RuboCop::NodePattern = RuboCop::AST::NodePattern
RuboCop::ProcessedSource = RuboCop::AST::ProcessedSource
module RuboCop::Sorbet; end
RuboCop::Sorbet::CONFIG = T.let(T.unsafe(nil), Hash)
RuboCop::Sorbet::CONFIG_DEFAULT = T.let(T.unsafe(nil), Pathname)
class RuboCop::Sorbet::Error < ::StandardError; end

module RuboCop::Sorbet::Inject
  class << self
    def defaults!; end
  end
end

RuboCop::Sorbet::PROJECT_ROOT = T.let(T.unsafe(nil), Pathname)
RuboCop::Sorbet::VERSION = T.let(T.unsafe(nil), String)
RuboCop::Token = RuboCop::AST::Token
