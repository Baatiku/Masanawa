.class public final Lteam/opay/odialog/DialogQueue$a;
.super Ljava/lang/Object;
.source "DialogQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/odialog/DialogQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/odialog/DialogQueue$a;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/odialog/DialogQueue;",
        "b",
        "Lteam/opay/odialog/DialogQueue;",
        "a",
        "()Lteam/opay/odialog/DialogQueue;",
        "setSInstance",
        "(Lteam/opay/odialog/DialogQueue;)V",
        "sInstance",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/odialog/DialogQueue$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lteam/opay/odialog/DialogQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/odialog/DialogQueue$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/odialog/DialogQueue$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/odialog/DialogQueue$a;->a:Lteam/opay/odialog/DialogQueue$a;

    .line 7
    .line 8
    new-instance v0, Lteam/opay/odialog/DialogQueue;

    .line 9
    .line 10
    invoke-direct {v0}, Lteam/opay/odialog/DialogQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/odialog/DialogQueue$a;->b:Lteam/opay/odialog/DialogQueue;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/odialog/DialogQueue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/odialog/DialogQueue$a;->b:Lteam/opay/odialog/DialogQueue;

    .line 2
    .line 3
    return-object v0
.end method
