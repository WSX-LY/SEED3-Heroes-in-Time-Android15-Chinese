.class public Lch/android/api/util/Seed3Diag;
.super Ljava/lang/Object;
.method public static event(Ljava/lang/String;)V
    .locals 1
    const-string v0, "Seed3Diag"
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
.method public static value(Ljava/lang/String;I)V
    .locals 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v1, "="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lch/android/api/util/Seed3Diag;->event(Ljava/lang/String;)V
    return-void
.end method
