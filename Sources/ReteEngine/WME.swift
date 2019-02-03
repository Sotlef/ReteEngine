
/// A working memory entry (WME), a fact.
///
/// A WME has a `identifier`, an `attribute`, and a `value`.
///
/// It expresses the notion that the relationship named by the attribute holds
/// between the identifier and the value.
///
/// The WME can be also seen as a triple of subject, predicate, and object.
///
/// ## CMU-CS-95-113:  Chapter 2: The Basic Rete Algorithm
///
/// > To simplify our description, we will assume that WMEs take the form of triples
/// > (three-tuples); we will write these as `(identifier ^attribute value)`. The names
/// > of the parts - "identier," "attribute," and "value" – have no special significance
/// > to the matcher. We sometimes abbreviate "identifier" as "id" or "attribute" as "attr."
/// > We will refer to the parts as the three fields in a WME; e.g., the WME `(B1 ^on B2)`
/// > has B1 in its identifier field. Each field contains exactly one symbol. The only
/// > restriction on what symbols are allowed is that they must all be constants:
/// > no variables are allowed in WMEs.
///
public struct WME<Constant>: Hashable where Constant: Hashable {

    public let identifier: Constant
    public let attribute: Constant
    public let value: Constant

    /// Creates a working memory entry from the given identifier, attribute, and value.
    ///
    public init(identifier: Constant, attribute: Constant, value: Constant) {
        self.identifier = identifier
        self.attribute = attribute
        self.value = value
    }

    /// Creates a working memory entry from the given identifier, attribute, and value.
    ///
    public init(_ identifier: Constant, _ attribute: Constant, _ value: Constant) {
        self.init(
            identifier: identifier,
            attribute: attribute,
            value: value
        )
    }
}

extension WME: CustomStringConvertible {
    public var description: String {
        return "(\(identifier) ^\(attribute) \(value))"
    }
}
