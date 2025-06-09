# SearXNG Docker Template for Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/MieO4T?referralCode=KKAfTD)

A ready-to-deploy [SearXNG](https://github.com/searxng/searxng) metasearch engine template for [Railway](https://railway.app). Get your own privacy-focused search engine running in minutes!

## 🔍 About SearXNG

SearXNG is a free internet metasearch engine that aggregates results from more than 70 search services. It's designed to provide:

- **Privacy Protection**: No tracking, no data collection, no user profiling
- **Ad-Free Experience**: Clean search results without advertisements
- **Multiple Sources**: Combines results from Google, Bing, DuckDuckGo, and many more
- **Open Source**: Fully transparent and community-driven
- **Customizable**: Configure which search engines to use and how results are displayed

## ✨ Features & Benefits of This Railway Template

### 🚀 One-Click Deployment
- Deploy SearXNG instantly to Railway with zero configuration
- Automatic HTTPS and domain provisioning
- No Docker knowledge required

### ⚙️ Environment-Driven Configuration
- **Customizable Settings**: Override default configurations using environment variables
- **Scalable Performance**: Adjust worker count and threads based on your needs
- **Security**: Set custom secret keys for enhanced security

### 🔧 Optimized for Railway
- **Railway Integration**: Automatically detects Railway's `PORT` environment variable
- **Dynamic Base URL**: Configures itself based on Railway's provided domain
- **Persistent Configuration**: Custom settings persist across deployments

### 🛡️ Security & Privacy
- **Rate Limiting**: Built-in protection against abuse (configurable)
- **No Data Retention**: Search queries are not logged or stored
- **Secret Key Management**: Secure session handling with customizable keys

## 🚀 How to Use This Template

### Option 1: One-Click Deployment (Recommended)

1. **Click the Deploy Button** above
2. **Connect Your GitHub**: Railway will fork this template to your account
3. **Deploy**: Railway automatically builds and deploys your SearXNG instance
4. **Access**: Use the provided Railway domain to access your search engine

### Option 2: Manual Deployment

1. **Fork this repository** to your GitHub account
2. **Connect to Railway**: 
   - Go to [Railway](https://railway.app)
   - Create a new project
   - Connect your forked repository
3. **Deploy**: Railway will automatically detect and deploy the Dockerfile

### Option 3: Local Development

```bash
# Clone the repository
git clone <your-fork-url>
cd searxng-docker

# Start with docker-compose
docker-compose up -d

# Access at http://localhost:8080
```

## ⚙️ Configuration

### Environment Variables

You can customize your SearXNG instance using these environment variables in Railway:

| Variable | Description | Default |
|----------|-------------|---------|
| `SEARXNG_SECRET_KEY` | Secret key for secure sessions | Auto-generated |
| `SEARXNG_BASE_URL` | Base URL of your instance | Railway domain |
| `SEARXNG_UWSGI_WORKERS` | Number of worker processes | 4 |
| `SEARXNG_UWSGI_THREADS` | Threads per worker | 4 |
| `PORT` | Port to listen on | 8080 (auto-set by Railway) |

### Setting Environment Variables in Railway

1. Go to your Railway project dashboard
2. Click on your service
3. Navigate to **Variables** tab
4. Add your custom environment variables
5. Redeploy if necessary

### Custom Configuration Files

The template includes these configuration files in the `searxng/` directory:

- **`settings.yml`**: Main SearXNG configuration (search engines, UI settings)
- **`limiter.toml`**: Rate limiting configuration
- **`uwsgi.ini`**: Auto-generated WSGI server configuration

You can modify these files and redeploy to customize your search engine behavior.

## 🔧 Advanced Usage

### Scaling Your Instance

For high-traffic usage, adjust these environment variables:

```env
SEARXNG_UWSGI_WORKERS=8    # Increase workers for more concurrent requests
SEARXNG_UWSGI_THREADS=6    # Increase threads per worker
```

### Security Hardening

1. **Set a Custom Secret Key**:
   ```env
   SEARXNG_SECRET_KEY=your-super-secret-key-here
   ```

2. **Configure Rate Limiting**: Edit `searxng/limiter.toml` to adjust rate limits

3. **Disable Debug Mode**: Edit `searxng/settings.yml` and set `debug: false`

## 📁 Project Structure

```
searxng-docker/
├── Dockerfile              # Container configuration
├── docker-compose.yml      # Local development setup
├── entrypoint.sh           # Container startup script
├── README.md               # This file
└── searxng/                # SearXNG configuration
    ├── settings.yml        # Main SearXNG settings
    ├── limiter.toml        # Rate limiting configuration
    └── uwsgi.ini           # Auto-generated WSGI config
```

## 🤝 Contributing

1. Fork this repository
2. Make your changes
3. Test locally with `docker-compose up`
4. Submit a pull request

## 📝 License

This template is open source. SearXNG itself is licensed under the GNU Affero General Public License v3.0.

## 🔗 Links

- [SearXNG Official Site](https://searxng.github.io/searxng/)
- [SearXNG Documentation](https://docs.searxng.org/)
- [Railway Documentation](https://docs.railway.app/)
- [SearXNG GitHub Repository](https://github.com/searxng/searxng)

---

**Happy Searching!** 🔍✨
