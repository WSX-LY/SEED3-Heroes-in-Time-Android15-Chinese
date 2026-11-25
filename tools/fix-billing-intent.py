from pathlib import Path
import shutil
p=Path('decoded/smali/ch/android/lib/iab/BillingService.smali'); s=p.read_text(); start=s.index('const-string v4, "com.android.vending.billing.MarketBillingService.BIND"'); at=s.index('    .line 416',start); s=s[:at]+'''    const-string v4, "com.android.vending"
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

'''+s[at:]; p.write_text(s); shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
