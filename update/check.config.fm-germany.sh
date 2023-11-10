echo "###-START-###"
tagname=$(curl -sl https://api.github.com/repos/SP0DZ/hotspot.fm-germany.config/releases/latest | jq -r .tag_name)
name=$(curl -sl https://api.github.com/repos/SP0DZ/hotspot.fm-germany.config/releases/latest | jq -r .name)
published=$(curl -sl https://api.github.com/repos/SP0DZ/hotspot.fm-germany.config/releases/latest | jq -r .published_at)
body=$(curl -sl https://api.github.com/repos/SP0DZ/hotspot.fm-germany.config/releases/latest | jq -r .body)
zipball=$(curl -sl https://api.github.com/repos/SP0DZ/hotspot.fm-germany.config/releases/latest | jq -r .zipball_url)
version=$(cat /opt/version.config)
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
echo "###-FINISH-####"
