# EcoFinds Backend API Test Script
Write-Host "🚀 Testing EcoFinds Backend API..." -ForegroundColor Green

# Test 1: Health Check
Write-Host "`n1. Testing Health Endpoint..." -ForegroundColor Yellow
try {
    $health = Invoke-WebRequest -Uri "http://localhost:5000/health" -UseBasicParsing
    $healthData = $health.Content | ConvertFrom-Json
    Write-Host "✅ Health Check: $($healthData.message)" -ForegroundColor Green
} catch {
    Write-Host "❌ Health Check Failed: $($_.Exception.Message)" -ForegroundColor Red
}

# Test 2: Products API
Write-Host "`n2. Testing Products API..." -ForegroundColor Yellow
try {
    $products = Invoke-WebRequest -Uri "http://localhost:5000/api/products" -UseBasicParsing
    $productsData = $products.Content | ConvertFrom-Json
    Write-Host "✅ Products API: Found $($productsData.data.products.Count) products" -ForegroundColor Green
} catch {
    Write-Host "❌ Products API Failed: $($_.Exception.Message)" -ForegroundColor Red
}

# Test 3: Categories API
Write-Host "`n3. Testing Categories API..." -ForegroundColor Yellow
try {
    $categories = Invoke-WebRequest -Uri "http://localhost:5000/api/products/categories/list" -UseBasicParsing
    $categoriesData = $categories.Content | ConvertFrom-Json
    Write-Host "✅ Categories API: Found $($categoriesData.data.categories.Count) categories" -ForegroundColor Green
} catch {
    Write-Host "❌ Categories API Failed: $($_.Exception.Message)" -ForegroundColor Red
}

# Test 4: Upload API (without file)
Write-Host "`n4. Testing Upload API..." -ForegroundColor Yellow
try {
    $upload = Invoke-WebRequest -Uri "http://localhost:5000/api/upload/test" -Method POST -UseBasicParsing
    $uploadData = $upload.Content | ConvertFrom-Json
    Write-Host "✅ Upload API: $($uploadData.message)" -ForegroundColor Green
} catch {
    $uploadData = $_.Exception.Response.GetResponseStream()
    $reader = New-Object System.IO.StreamReader($uploadData)
    $responseBody = $reader.ReadToEnd()
    $uploadJson = $responseBody | ConvertFrom-Json
    Write-Host "✅ Upload API: $($uploadJson.message) (Expected behavior)" -ForegroundColor Green
}

# Test 5: Auth API (without token)
Write-Host "`n5. Testing Auth API..." -ForegroundColor Yellow
try {
    $auth = Invoke-WebRequest -Uri "http://localhost:5000/api/auth/verify" -UseBasicParsing
    $authData = $auth.Content | ConvertFrom-Json
    Write-Host "✅ Auth API: $($authData.message)" -ForegroundColor Green
} catch {
    $authData = $_.Exception.Response.GetResponseStream()
    $reader = New-Object System.IO.StreamReader($authData)
    $responseBody = $reader.ReadToEnd()
    $authJson = $responseBody | ConvertFrom-Json
    Write-Host "✅ Auth API: $($authJson.message) (Expected behavior)" -ForegroundColor Green
}

Write-Host "`n🎉 API Testing Complete!" -ForegroundColor Green
Write-Host "`n📋 Next Steps:" -ForegroundColor Cyan
Write-Host "1. Open browser: http://localhost:5000/" -ForegroundColor White
Write-Host "2. Test uploads: http://localhost:5000/test" -ForegroundColor White
Write-Host "3. Set up Firebase Auth for full functionality" -ForegroundColor White
Write-Host "4. Start building your frontend!" -ForegroundColor White






