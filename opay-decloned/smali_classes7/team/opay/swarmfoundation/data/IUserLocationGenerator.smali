.class public interface abstract Lteam/opay/swarmfoundation/data/IUserLocationGenerator;
.super Ljava/lang/Object;
.source "IUserLocationGenerator.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/data/IDataGenerator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/data/IUserLocationGenerator;",
        "Lteam/opay/swarmfoundation/data/IDataGenerator;",
        "getLastLocation",
        "Landroid/location/Location;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "latitude",
        "",
        "longitude",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getLastLocation(Lkotlin/jvm/functions/Function1;)Landroid/location/Location;
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/location/Location;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract latitude()D
.end method

.method public abstract longitude()D
.end method
