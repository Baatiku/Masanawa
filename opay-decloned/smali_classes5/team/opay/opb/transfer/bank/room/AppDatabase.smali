.class public abstract Lteam/opay/opb/transfer/bank/room/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/room/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "S",
        "()Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "T",
        "()Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "business-transfer-bank_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract S()Lteam/opay/opb/transfer/bank/room/BanksDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract T()Lteam/opay/opb/transfer/bank/room/ServicesDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
