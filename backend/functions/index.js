const functions = require("firebase-functions");

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

const admin = require('firebase-admin');
admin.initializeApp();

const db = admin.firestore();

exports.addLike = functions.firestore.document('/posts/{postId}/likes/{userId}').onCreate((snap,context)=> {
     return db.collection("posts").doc(context.params.postId).update({likesCount: admin.firestore.FieldValue.increment(1)})
})

exports.deleteLike = functions.firestore.document('/posts/{postId}/likes/{userId}').onDelete((snap,context)=> {
     return db.collection("posts").doc(context.params.postId).update({likesCount: admin.firestore.FieldValue.increment(-1)})
})