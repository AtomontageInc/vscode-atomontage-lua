// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';

export function setUserThirdPartyAllWorkspaceFolders(folder: string, enable: boolean) {
	//if workspace has folders apply setting to each folder workspace individually
	const folders = vscode.workspace.workspaceFolders;
	if (folders){
		folders.forEach(element => {
			const uri = element.uri;
			const config = vscode.workspace.getConfiguration("Lua", uri);
			setUserThirdParty(config, folder, enable);
		});
	}else{
		const config = vscode.workspace.getConfiguration("Lua");
		setUserThirdParty(config, folder, enable);
	}
}

export function setUserThirdParty(config: vscode.WorkspaceConfiguration, folder: string, enable: boolean) {
	// get id like this? context.extension.id
	const extensionId = "AtomontageInc.vscode-atomontage-lua";
	const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;
	const folderPath = extensionPath + "\\" + folder;

	const library: string[] | undefined = config.get("workspace.userThirdParty");
	if (library && extensionPath) {
		// remove any older versions of our path e.g. "publisher.name-0.0.1"
		for (let i = library.length - 1; i >= 0; i--) {
			const el = library[i];
			const isSelfExtension = el.indexOf(extensionId) > -1;
			const isCurrentVersion = el.indexOf(extensionPath) > -1;
			if (isSelfExtension && !isCurrentVersion) {
				library.splice(i, 1);
			}
		}
		const index = library.indexOf(folderPath);
		if (enable) {
			if (index === -1) {
				library.push(folderPath);
			}
		}
		else {
			if (index > -1) {
				library.splice(index, 1);
			}
		}

		config.update("workspace.userThirdParty", library, null);
	}
}

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
	setUserThirdPartyAllWorkspaceFolders("am_library", true);
}

// this method is called when your extension is deactivated
export function deactivate() {}


/*
"Lua.workspace.userThirdParty": [
        "c:\\Users\\maxkr\\Documents\\Code\\Atomontage\\vscode-atomontage-lua\\am_library"
    ],

*/