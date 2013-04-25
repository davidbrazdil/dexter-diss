.class Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v0, p1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Landroid/location/Location;)Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x447a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;J)J

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->b(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Landroid/location/Location;)V

    :cond_30
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Z)Z

    goto :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Z)Z

    goto :goto_3

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method
