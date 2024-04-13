const { google } = require('googleapis');
const fs = require('fs');
const path = require('path');

async function uploadFileToFolder(drive, folderName, filePath) {
  const folderId = await ensureFolderExists(drive, folderName);
  const fileMetadata = {
    name: path.basename(filePath),
    parents: [folderId],
    mimeType: 'text/plain',
  };
  const media = {
    mimeType: 'text/plain',
    body: fs.createReadStream(filePath),
  };
  const response = await drive.files.create({
    requestBody: fileMetadata,
    media: media,
    fields: 'id, name, webViewLink, webContentLink, owners',
  });
  console.log('File Uploaded:', response.data);
  return response.data;
}

async function ensureFolderExists(drive, folderName) {
  const query = `mimeType='application/vnd.google-apps.folder' and name='${folderName}' and trashed=false`;
  const res = await drive.files.list({
    q: query,
    fields: 'files(id, name)',
    spaces: 'drive',
  });
  if (res.data.files.length > 0) {
    console.log('Folder exists:', res.data.files[0].id);
    return res.data.files[0].id;
  } else {
    // Create folder
    const folderMetadata = {
      name: folderName,
      mimeType: 'application/vnd.google-apps.folder',
    };
    const folder = await drive.files.create({
      requestBody: folderMetadata,
      fields: 'id',
    });
    console.log('Folder created:', folder.data.id);
    return folder.data.id;
  }
}

const auth = new google.auth.GoogleAuth({
  keyFile: path.join(__dirname, 'keypath.json'),
  scopes: ['https://www.googleapis.com/auth/drive'],
});
const drive = google.drive({ version: 'v3', auth });

const folderName = 'Backupdb';
const filePath = path.join(__dirname, 'test.sql');

// uploadFileToFolder(drive, folderName, filePath).catch(console.error);

async function shareFolder(folderId, userEmail) {
  const drive = google.drive({ version: 'v3', auth });

  const requestBody = {
    role: 'writer',
    type: 'user',
    emailAddress: userEmail,
  };

  try {
    await drive.permissions.create({
      fileId: folderId,
      requestBody: requestBody,
      fields: 'id',
    });
    console.log('Folder shared successfully.');
  } catch (error) {
    console.error('Failed to share folder:', error);
  }
}

// shareFolder('1-M8nk_h0lnNbz21ECrSq_mICzJ8ZPy2m', 'ducduy0209.work@gmail.com');
