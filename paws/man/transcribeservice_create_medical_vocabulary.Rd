% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_create_medical_vocabulary}
\alias{transcribeservice_create_medical_vocabulary}
\title{Creates a new custom vocabulary that you can use to change how Amazon
Transcribe Medical transcribes your audio file}
\usage{
transcribeservice_create_medical_vocabulary(VocabularyName,
  LanguageCode, VocabularyFileUri)
}
\arguments{
\item{VocabularyName}{[required] The name of the custom vocabulary. This case-sensitive name must be
unique within an AWS account. If you try to create a vocabulary with the
same name as a previous vocabulary, you get a \code{ConflictException} error.}

\item{LanguageCode}{[required] The language code for the language used for the entries in your custom
vocabulary. The language code of your custom vocabulary must match the
language code of your transcription job. US English (en-US) is the only
language code available for Amazon Transcribe Medical.}

\item{VocabularyFileUri}{[required] The location in Amazon S3 of the text file you use to define your custom
vocabulary. The URI must be in the same AWS Region as the resource that
you're calling. Enter information about your \code{VocabularyFileUri} in the
following format:

\verb{https://s3.&lt;aws-region&gt;.amazonaws.com/&lt;bucket-name&gt;/&lt;keyprefix&gt;/&lt;objectkey&gt;}

The following is an example URI for a vocabulary file that is stored in
Amazon S3:

\verb{https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt}

For more information about Amazon S3 object names, see \href{https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys}{Object Keys}
in the \emph{Amazon S3 Developer Guide}.

For more information about custom vocabularies, see \href{https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary-med}{Medical Custom Vocabularies}.}
}
\description{
Creates a new custom vocabulary that you can use to change how Amazon
Transcribe Medical transcribes your audio file.
}
\section{Request syntax}{
\preformatted{svc$create_medical_vocabulary(
  VocabularyName = "string",
  LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"cy-GB"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"ga-IE"|"gd-GB"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN",
  VocabularyFileUri = "string"
)
}
}

\keyword{internal}
