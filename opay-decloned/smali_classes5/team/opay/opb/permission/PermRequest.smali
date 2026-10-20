.class public final Lteam/opay/opb/permission/PermRequest;
.super Ljava/lang/Object;
.source "PermRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/permission/PermRequest$Builder;,
        Lteam/opay/opb/permission/PermRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u0010B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/opb/permission/PermRequest;",
        "",
        "Lteam/opay/opb/permission/PermRequest$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/opb/permission/PermRequest$Builder;)V",
        "a",
        "Lteam/opay/opb/permission/PermRequest$Builder;",
        "Lteam/opay/core/common/base/DialogInfo;",
        "d",
        "()Lteam/opay/core/common/base/DialogInfo;",
        "denied",
        "e",
        "forever",
        "b",
        "Builder",
        "Companion",
        "opb-permission_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lteam/opay/opb/permission/PermRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/opb/permission/PermRequest$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/permission/PermRequest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/permission/PermRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/permission/PermRequest;->b:Lteam/opay/opb/permission/PermRequest$Companion;

    .line 8
    .line 9
    new-instance v0, Lnnb;

    .line 10
    .line 11
    invoke-direct {v0}, Lnnb;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/opb/permission/PermRequest;->c:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lteam/opay/opb/permission/PermRequest$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/opb/permission/PermRequest;->a:Lteam/opay/opb/permission/PermRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/opb/permission/PermRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/opb/permission/PermRequest;-><init>(Lteam/opay/opb/permission/PermRequest$Builder;)V

    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/permission/PermRequest;->c()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/permission/PermRequest;->c:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public final d()Lteam/opay/core/common/base/DialogInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/permission/PermRequest;->a:Lteam/opay/opb/permission/PermRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/permission/PermRequest$Builder;->d()Lteam/opay/core/common/base/DialogInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Lteam/opay/core/common/base/DialogInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/permission/PermRequest;->a:Lteam/opay/opb/permission/PermRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/permission/PermRequest$Builder;->e()Lteam/opay/core/common/base/DialogInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
