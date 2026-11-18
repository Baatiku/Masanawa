.class public final enum Lcashier/CustomDialogScene;
.super Ljava/lang/Enum;
.source "CashierDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcashier/CustomDialogScene;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcashier/CustomDialogScene;",
        "",
        "(Ljava/lang/String;I)V",
        "NO_PIN",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcashier/CustomDialogScene;

.field public static final enum NO_PIN:Lcashier/CustomDialogScene;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NO_PIN"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcashier/CustomDialogScene;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcashier/CustomDialogScene;

    .line 3
    .line 4
    sget-object v1, Lcashier/CustomDialogScene;->NO_PIN:Lcashier/CustomDialogScene;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcashier/CustomDialogScene;

    .line 2
    .line 3
    const-string v1, "NO_PIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcashier/CustomDialogScene;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcashier/CustomDialogScene;->NO_PIN:Lcashier/CustomDialogScene;

    .line 10
    .line 11
    invoke-static {}, Lcashier/CustomDialogScene;->$values()[Lcashier/CustomDialogScene;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcashier/CustomDialogScene;->$VALUES:[Lcashier/CustomDialogScene;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcashier/CustomDialogScene;
    .locals 1

    .line 1
    const-class v0, Lcashier/CustomDialogScene;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcashier/CustomDialogScene;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcashier/CustomDialogScene;
    .locals 1

    .line 1
    sget-object v0, Lcashier/CustomDialogScene;->$VALUES:[Lcashier/CustomDialogScene;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcashier/CustomDialogScene;

    .line 8
    .line 9
    return-object v0
.end method
