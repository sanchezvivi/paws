% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_delete_item}
\alias{dynamodb_delete_item}
\title{Deletes a single item in a table by primary key}
\usage{
dynamodb_delete_item(TableName, Key, Expected, ConditionalOperator,
  ReturnValues, ReturnConsumedCapacity, ReturnItemCollectionMetrics,
  ConditionExpression, ExpressionAttributeNames,
  ExpressionAttributeValues)
}
\arguments{
\item{TableName}{[required] The name of the table from which to delete the item.}

\item{Key}{[required] A map of attribute names to \code{AttributeValue} objects, representing the
primary key of the item to delete.

For the primary key, you must provide all of the attributes. For
example, with a simple primary key, you only need to provide a value for
the partition key. For a composite primary key, you must provide values
for both the partition key and the sort key.}

\item{Expected}{This is a legacy parameter. Use \code{ConditionExpression} instead. For more
information, see
\href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html}{Expected}
in the \emph{Amazon DynamoDB Developer Guide}.}

\item{ConditionalOperator}{This is a legacy parameter. Use \code{ConditionExpression} instead. For more
information, see
\href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html}{ConditionalOperator}
in the \emph{Amazon DynamoDB Developer Guide}.}

\item{ReturnValues}{Use \code{ReturnValues} if you want to get the item attributes as they
appeared before they were deleted. For \code{DeleteItem}, the valid values
are:
\itemize{
\item \code{NONE} - If \code{ReturnValues} is not specified, or if its value is
\code{NONE}, then nothing is returned. (This setting is the default for
\code{ReturnValues}.)
\item \code{ALL_OLD} - The content of the old item is returned.
}

The \code{ReturnValues} parameter is used by several DynamoDB operations;
however, \code{DeleteItem} does not recognize any values other than \code{NONE} or
\code{ALL_OLD}.}

\item{ReturnConsumedCapacity}{}

\item{ReturnItemCollectionMetrics}{Determines whether item collection metrics are returned. If set to
\code{SIZE}, the response includes statistics about item collections, if any,
that were modified during the operation are returned in the response. If
set to \code{NONE} (the default), no statistics are returned.}

\item{ConditionExpression}{A condition that must be satisfied in order for a conditional
\code{DeleteItem} to succeed.

An expression can contain any of the following:
\itemize{
\item Functions:
\code{attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size}

These function names are case-sensitive.
\item Comparison operators:
\verb{= | &lt;&gt; | &lt; | &gt; | &lt;= | &gt;= | BETWEEN | IN }
\item Logical operators: \code{AND | OR | NOT}
}

For more information about condition expressions, see \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html}{Condition Expressions}
in the \emph{Amazon DynamoDB Developer Guide}.}

\item{ExpressionAttributeNames}{One or more substitution tokens for attribute names in an expression.
The following are some use cases for using \code{ExpressionAttributeNames}:
\itemize{
\item To access an attribute whose name conflicts with a DynamoDB reserved
word.
\item To create a placeholder for repeating occurrences of an attribute
name in an expression.
\item To prevent special characters in an attribute name from being
misinterpreted in an expression.
}

Use the \strong{\\#} character in an expression to dereference an attribute
name. For example, consider the following attribute name:
\itemize{
\item \code{Percentile}
}

The name of this attribute conflicts with a reserved word, so it cannot
be used directly in an expression. (For the complete list of reserved
words, see \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html}{Reserved Words}
in the \emph{Amazon DynamoDB Developer Guide}). To work around this, you
could specify the following for \code{ExpressionAttributeNames}:
\itemize{
\item \verb{\\\{"#P":"Percentile"\\\}}
}

You could then use this substitution in an expression, as in this
example:
\itemize{
\item \verb{#P = :val}
}

Tokens that begin with the \strong{:} character are \emph{expression attribute
values}, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Attributes.html}{Specifying Item Attributes}
in the \emph{Amazon DynamoDB Developer Guide}.}

\item{ExpressionAttributeValues}{One or more values that can be substituted in an expression.

Use the \strong{:} (colon) character in an expression to dereference an
attribute value. For example, suppose that you wanted to check whether
the value of the \emph{ProductStatus} attribute was one of the following:

\code{Available | Backordered | Discontinued}

You would first need to specify \code{ExpressionAttributeValues} as follows:

\verb{\\\{ ":avail":\\\{"S":"Available"\\\}, ":back":\\\{"S":"Backordered"\\\}, ":disc":\\\{"S":"Discontinued"\\\} \\\}}

You could then use these values in an expression, such as this:

\verb{ProductStatus IN (:avail, :back, :disc)}

For more information on expression attribute values, see \href{https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html}{Condition Expressions}
in the \emph{Amazon DynamoDB Developer Guide}.}
}
\description{
Deletes a single item in a table by primary key. You can perform a
conditional delete operation that deletes the item if it exists, or if
it has an expected attribute value.

In addition to deleting an item, you can also return the item's
attribute values in the same operation, using the \code{ReturnValues}
parameter.

Unless you specify conditions, the \code{DeleteItem} is an idempotent
operation; running it multiple times on the same item or attribute does
\emph{not} result in an error response.

Conditional deletes are useful for deleting items only if specific
conditions are met. If those conditions are met, DynamoDB performs the
delete. Otherwise, the item is not deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_item(
  TableName = "string",
  Key = list(
    list(
      S = "string",
      N = "string",
      B = raw,
      SS = list(
        "string"
      ),
      NS = list(
        "string"
      ),
      BS = list(
        raw
      ),
      M = list(
        list()
      ),
      L = list(
        list()
      ),
      NULL = TRUE|FALSE,
      BOOL = TRUE|FALSE
    )
  ),
  Expected = list(
    list(
      Value = list(
        S = "string",
        N = "string",
        B = raw,
        SS = list(
          "string"
        ),
        NS = list(
          "string"
        ),
        BS = list(
          raw
        ),
        M = list(
          list()
        ),
        L = list(
          list()
        ),
        NULL = TRUE|FALSE,
        BOOL = TRUE|FALSE
      ),
      Exists = TRUE|FALSE,
      ComparisonOperator = "EQ"|"NE"|"IN"|"LE"|"LT"|"GE"|"GT"|"BETWEEN"|"NOT_NULL"|"NULL"|"CONTAINS"|"NOT_CONTAINS"|"BEGINS_WITH",
      AttributeValueList = list(
        list(
          S = "string",
          N = "string",
          B = raw,
          SS = list(
            "string"
          ),
          NS = list(
            "string"
          ),
          BS = list(
            raw
          ),
          M = list(
            list()
          ),
          L = list(
            list()
          ),
          NULL = TRUE|FALSE,
          BOOL = TRUE|FALSE
        )
      )
    )
  ),
  ConditionalOperator = "AND"|"OR",
  ReturnValues = "NONE"|"ALL_OLD"|"UPDATED_OLD"|"ALL_NEW"|"UPDATED_NEW",
  ReturnConsumedCapacity = "INDEXES"|"TOTAL"|"NONE",
  ReturnItemCollectionMetrics = "SIZE"|"NONE",
  ConditionExpression = "string",
  ExpressionAttributeNames = list(
    "string"
  ),
  ExpressionAttributeValues = list(
    list(
      S = "string",
      N = "string",
      B = raw,
      SS = list(
        "string"
      ),
      NS = list(
        "string"
      ),
      BS = list(
        raw
      ),
      M = list(
        list()
      ),
      L = list(
        list()
      ),
      NULL = TRUE|FALSE,
      BOOL = TRUE|FALSE
    )
  )
)
}
}

\examples{
\dontrun{
# This example deletes an item from the Music table.
svc$delete_item(
  Key = list(
    Artist = list(
      S = "No One You Know"
    ),
    SongTitle = list(
      S = "Scared of My Shadow"
    )
  ),
  TableName = "Music"
)
}

}
\keyword{internal}
