echo "###-START-###"
echo "Fm branch"
tagname=$(curl -sl https://api.github.com/repos/sm0svx/svxlink/releases/latest | jq -r .tag_name)
name=$(curl -sl https://api.github.com/repos/sm0svx/svxlink/releases/latest | jq -r .name)
published=$(curl -sl https://api.github.com/repos/sm0svx/svxlink/releases/latest | jq -r .published_at)
body=$(curl -sl https://api.github.com/repos/sm0svx/svxlink/releases/latest | jq -r .body)
zipball=$(curl -sl https://api.github.com/repos/sm0svx/svxlink/releases/latest | jq -r .zipball_url)
version=$(cat /opt/version.svxlink)
echo "$body"
echo "......................................................."
echo "Changes:"
echo "......................................................."
echo "$zipball"
echo "......................................................."
echo "Version Name:  $name"
echo "Version Date:  $published"
echo "Server Version  $tagname vs Installed Version $version"
echo "......................................................."
echo "PLEASE IGNORE THIS INFORMATION"
echo "###-FINISH-####"
