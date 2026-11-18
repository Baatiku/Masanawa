.class final Lteam/opay/olocation/OLocationManager$initLocation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OLocationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/olocation/OLocationManager;->m(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/location/Location;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/location/Location;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lteam/opay/olocation/OLocationManager$initLocation$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/olocation/OLocationManager$initLocation$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/olocation/OLocationManager$initLocation$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/olocation/OLocationManager$initLocation$1;->INSTANCE:Lteam/opay/olocation/OLocationManager$initLocation$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lteam/opay/olocation/OLocationManager$initLocation$1;->invoke(Landroid/location/Location;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lwj8;->a:Lwj8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocation change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    invoke-static {v0, p1}, Lteam/opay/olocation/OLocationManager;->c(Lteam/opay/olocation/OLocationManager;Landroid/location/Location;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lwj8;->a:Lwj8;

    const-string v0, "onLocation change it is null}"

    invoke-virtual {p1, v0}, Lwj8;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
