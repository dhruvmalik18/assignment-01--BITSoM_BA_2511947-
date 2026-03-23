## Vector DB Use Case

A traditional keyword-based search is not sufficient for searching large legal contracts because it depends on exact keyword matching. However, users often ask questions in natural language, and relevant information may not contain the same keywords.

Vector databases solve this problem by using embeddings that capture the meaning of text. Instead of matching exact words, they compare the semantic similarity between the query and stored data.

In this system, each part of the contract is converted into vector embeddings and stored in a vector database. When a user asks a question, the query is also converted into an embedding and compared using cosine similarity.

This allows the system to return the most relevant results even if the wording is different. Therefore, vector databases play a crucial role in building intelligent search systems for large documents like legal contracts.