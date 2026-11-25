from pathlib import Path
import re,shutil
p=Path('decoded/smali/ch/android/api/iap/ChAndroidIab.smali');s=p.read_text()
signature='.method public static popUpPurchaseDlg(Ljava/lang/String;ZLjava/lang/String;ILch/android/lib/iab/ChOnPurchaseListener;)V'
body='''.method public static popUpPurchaseDlg(Ljava/lang/String;ZLjava/lang/String;ILch/android/lib/iab/ChOnPurchaseListener;)V
    .locals 5
    const/4 v4, 0x4
    if-eqz p1, :points
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;
    const/4 v1, 0x1
    invoke-virtual {v0, p2, v1}, Lch/kingdoms/android/db/DBAdapter;->setPurchase(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :notify
    const/4 v4, 0x0
    goto :notify
    :points
    if-lez p3, :notify
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;
    move-result-object v0
    if-eqz v0, :notify
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I
    move-result v1
    add-int v2, v1, p3
    if-lt v2, v1, :notify
    invoke-virtual {v0, v2}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z
    move-result v2
    if-eqz v2, :rollback
    const/4 v4, 0x0
    goto :notify
    :rollback
    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V
    :notify
    if-eqz p4, :done
    invoke-interface {p4, v4, p0, p3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :done
    return-void
.end method'''
s,n=re.subn(re.escape(signature)+r'.*?\.end method',lambda m:body,s,flags=re.S);assert n==1
# Restore reports only locally recorded managed purchases.
start=s.index('.method public static restoreManagedItems(');end=s.index('.end method',start)+len('.end method')
body='''.method public static restoreManagedItems(Lch/android/lib/iab/ChOnPurchaseListener;)V
    .locals 4
    if-eqz p0, :done
    sget-object v0, Lch/android/api/iap/ChAndroidIab;->sDba:Lch/kingdoms/android/db/DBAdapter;
    const-string v1, "WARPGATE"
    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z
    move-result v1
    const/4 v2, 0x0
    const/4 v3, 0x1
    if-eqz v1, :arena
    const-string v1, "item_warpgate_unlock"
    invoke-interface {p0, v2, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :arena
    const-string v1, "COLOSSEUM"
    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :done
    const-string v1, "item_colosseum_unlock"
    invoke-interface {p0, v2, v1, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V
    :done
    return-void
.end method'''
s=s[:start]+body+s[end:];p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
p=Path('decoded/smali/ch/android/api/ui/ChPaidContentView.smali');s=p.read_text();s=s.replace('    const/4 v13, 0x1\n\n    invoke-static {}, Lch/android/api/util/TextPaints;->getBigSize()I','    const/4 v13, 0x0\n\n    invoke-static {}, Lch/android/api/util/TextPaints;->getBigSize()I');p.write_text(s);shutil.copy2(p,Path('C:/Users/Administrator/seed3-debug')/p)
